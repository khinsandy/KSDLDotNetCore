using System.Data;
using System.Data.SqlClient;

Console.WriteLine("Hello, World!");

// nuget
// sqlconnection

// ctrl + . => suggestion
// F10 => step over
// F11 => step into
// F9 => breakpoint

// c# => db

SqlConnectionStringBuilder stringBuilder= new SqlConnectionStringBuilder();
stringBuilder.DataSource = ".\\SQLEXPRESS"; //server name
stringBuilder.InitialCatalog= "DotNetTrainingBatch4"; //db name
stringBuilder.UserID = "sa";
stringBuilder.Password = "sasa@123";
SqlConnection connection = new SqlConnection(stringBuilder.ConnectionString);

connection.Open();
Console.WriteLine("connection open.");

string query = "select * from Tbl_Blog";
SqlCommand cmd=new SqlCommand(query, connection);
SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(cmd);
DataTable dt=new DataTable();
sqlDataAdapter.Fill(dt);

connection.Close();
Console.WriteLine("connection closed.");

foreach (DataRow dr in dt.Rows)
{
    Console.WriteLine("Blog Id => " + dr["BlogId"]);
    Console.WriteLine("Blog Title => " + dr["BlogTitle"]);
    Console.WriteLine("Blog Author => " + dr["BlogAuthor"]);
    Console.WriteLine("Blog Content => " + dr["BlogContent"]);
    Console.WriteLine("----------------------------------------");
}

Console.ReadKey();