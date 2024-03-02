namespace DBProject
{
    public partial class Form1 : Form
    {
       mobile m = new mobile(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Hakim\DB\Project\DBProject\DBProject\mobliedb.mdf;Integrated Security=True");
        public Form1()
        {
            InitializeComponent();
        }

        private void label1_Click(object sender, EventArgs e)
        {
            
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            showdata((string)textBox1.Text);
        }
        void showdata(string s)
        {
            dataGridView1.DataSource = m.returnrec(s);
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {
            //showdata((string)textBox1.Text);
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void btnsrch_Click(object sender, EventArgs e)
        {
            dataGridView1.DataSource = m.return_btn_rec((string)textBox1.Text);
        }
    }
}