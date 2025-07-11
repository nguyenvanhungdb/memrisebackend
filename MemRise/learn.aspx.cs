using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace MemRise
{
    public partial class learn : System.Web.UI.Page
    {
        private static List<VocabularyItem> quizList;
        private static int currentQuestionIndex;
        private static int correctCount;
        private static int incorrectCount;
        private static Random random = new Random();
        public string progressWidth = "0";
        private static List<VocabularyItem> fullWordList;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadQuizData();
                currentQuestionIndex = 0;
                correctCount = 0;
                incorrectCount = 0;
                DisplayQuestion();
            }
        }
        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }

        protected void btnBlog_Click(object sender, EventArgs e)
        {
            Response.Redirect("blog.aspx");
        }
        protected void btnCourse_Click(object sender, EventArgs e)
        {
            Response.Redirect("course.aspx");
        }

        private void LoadQuizData()
        {
            quizList = new List<VocabularyItem>();
            fullWordList = new List<VocabularyItem>();
            string connStr = ConfigurationManager.ConnectionStrings["MemriseDB"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                conn.Open();

                // Lấy toàn bộ danh sách cho việc chọn đáp án ngẫu nhiên
                string allQuery = "SELECT * FROM Vocabulary";
                SqlCommand allCmd = new SqlCommand(allQuery, conn);
                SqlDataReader allReader = allCmd.ExecuteReader();

                while (allReader.Read())
                {
                    fullWordList.Add(new VocabularyItem
                    {
                        Word = allReader["Word"].ToString(),
                        Meaning = allReader["Meaning"].ToString()
                    });
                }
                allReader.Close();

                // Lấy 5 từ ngẫu nhiên cho quizList
                string quizQuery = "SELECT TOP 10 * FROM Vocabulary ORDER BY NEWID()";
                SqlCommand quizCmd = new SqlCommand(quizQuery, conn);
                SqlDataReader quizReader = quizCmd.ExecuteReader();

                while (quizReader.Read())
                {
                    quizList.Add(new VocabularyItem
                    {
                        Word = quizReader["Word"].ToString(),
                        Meaning = quizReader["Meaning"].ToString()
                    });
                }
            }
        }


        private void UpdateProgress()
        {
            int total = quizList.Count;
            int current = currentQuestionIndex + 1;
            lblProgressText.Text = $"{current}/{total}";
            progressWidth = ((current * 100) / total).ToString();
        }

        private void DisplayQuestion()
        {
            if (currentQuestionIndex >= quizList.Count)
            {
                lblInstruction.Visible = false;
                btnAns1.Visible = false;
                btnAns2.Visible = false;
                btnAns3.Visible = false;
                btnAns4.Visible = false;
                btnNext.Visible = false;

                lblQuestion.Text = $"🎉 Chúc mừng! Bạn đã hoàn thành bài test";

                lblResult.Text = $"Số câu đúng: {correctCount}<br>Số câu sai: {incorrectCount}";
                lblResult.Visible = true;

                btnRestart.Visible = true;
                return;
            }

            ResetAnswerStyles();

            var question = quizList[currentQuestionIndex];
            lblQuestion.Text = question.Word;
            ViewState["CorrectAnswer"] = question.Meaning;

            UpdateProgress();

            List<string> options = new List<string> { question.Meaning };
            while (options.Count < 4)
            {
                var randomItem = fullWordList[random.Next(fullWordList.Count)];
                if (!options.Contains(randomItem.Meaning))
                    options.Add(randomItem.Meaning);
            }

            Shuffle(options);

            btnAns1.Text = options[0];
            btnAns2.Text = options[1];
            btnAns3.Text = options[2];
            btnAns4.Text = options[3];

            btnNext.Visible = false;
            EnableAnswerButtons(true);
        }


        protected void btnAns_Click(object sender, EventArgs e)
        {
            LinkButton clicked = (LinkButton)sender;
            string selected = clicked.Text;
            string correct = ViewState["CorrectAnswer"].ToString();

            if (selected == correct)
            {
                clicked.CssClass += " correct";
                correctCount++;
            }
            else
            {
                clicked.CssClass += " wrong";
                incorrectCount++;

                // Tô màu đúng luôn
                if (btnAns1.Text == correct) btnAns1.CssClass += " correct";
                if (btnAns2.Text == correct) btnAns2.CssClass += " correct";
                if (btnAns3.Text == correct) btnAns3.CssClass += " correct";
                if (btnAns4.Text == correct) btnAns4.CssClass += " correct";
            }

            EnableAnswerButtons(false);
            btnNext.Visible = true;

            // 👉 Update tiến độ để progress bar không bị trắng
            UpdateProgress();
            lblProgressText.Text = $"{Math.Min(currentQuestionIndex + 1, quizList.Count)}/{quizList.Count}";
        }


        protected void btnNext_Click(object sender, EventArgs e)
        {
            currentQuestionIndex++;
            DisplayQuestion();
        }

        private void EnableAnswerButtons(bool enable)
        {
            btnAns1.Enabled = btnAns2.Enabled = btnAns3.Enabled = btnAns4.Enabled = enable;
        }

        private void ResetAnswerStyles()
        {
            btnAns1.CssClass = "answer-btn";
            btnAns2.CssClass = "answer-btn";
            btnAns3.CssClass = "answer-btn";
            btnAns4.CssClass = "answer-btn";
        }

        private void Shuffle(List<string> list)
        {
            for (int i = list.Count - 1; i > 0; i--)
            {
                int j = random.Next(i + 1);
                var temp = list[i];
                list[i] = list[j];
                list[j] = temp;
            }
        }

        private class VocabularyItem
        {
            public string Word { get; set; }
            public string Meaning { get; set; }
        }

        protected void btnRestart_Click(object sender, EventArgs e)
        {
            currentQuestionIndex = 0;
            correctCount = 0;
            incorrectCount = 0;

            LoadQuizData();

            // ✅ Hiện lại các thành phần cần thiết
            lblResult.Visible = false;
            btnRestart.Visible = false;

            lblQuestion.Visible = true;
            lblInstruction.Visible = true; // Nếu có dòng "Pick a correct answer"

            btnAns1.Visible = true;
            btnAns2.Visible = true;
            btnAns3.Visible = true;
            btnAns4.Visible = true;

            btnNext.Visible = false;
            EnableAnswerButtons(true);

            UpdateProgress();
            lblProgressText.Text = $"1/{quizList.Count}";

            DisplayQuestion(); // ✅ Quan trọng: phải gọi sau khi reset xong
        }


    }
}
