using KSDLDotNetCore.ConsoleApp;
using System.Data;
using System.Data.SqlClient;

//Console.WriteLine("Hello, World!");

// nuget
// sqlconnection

// ctrl + . => suggestion
// F10 => step over
// F11 => step into
// F9 => breakpoint

// c# => db

AdoDotNetExample adoDotNETExample = new AdoDotNetExample();
//adoDotNETExample.Read();
//adoDotNETExample.Create("titile","author","content");
//adoDotNETExample.Update(12, "string title", "string author", "string content");
//adoDotNETExample.Delete(12);
adoDotNETExample.Edit(12);
adoDotNETExample.Edit(10);

Console.ReadLine();