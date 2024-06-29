using Azure;
using Dapper;
using KSDLDotNetCore.RestApi.Model;
using KSDLDotNetCore.Shared;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System.Data;
using System.Data.SqlClient;
using System.Reflection.Metadata;
using System.Runtime.CompilerServices;

namespace KSDLDotNetCore.RestApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class BlogDapper2Controller : ControllerBase
    {
        private readonly DapperService _dapperService = new DapperService(ConnectionString.SqlConnectionStringBuilder.ConnectionString);
        // Read
        [HttpGet]
        public IActionResult GetBlog()
        {
            string query = "select * from Tbl_Blog";
            
            var lst= _dapperService.Query<BlogModel>(query);
            return Ok(lst);
        }

        // Read
        [HttpGet("{id}")]
        public IActionResult GetBlog(int id)
        {
           
            var item = FindById(id);
            if (item is null)
            {
                return NotFound("No data found.");
            }

            return Ok(item);
        }

        // Create
        [HttpPost]
        public IActionResult CreateBlog(BlogModel blog)
        {
           string query = @"INSERT INTO [dbo].[Tbl_Blog]
           ([BlogTitle]
           ,[BlogAuthor]
           ,[BlogContent])
     VALUES
           (@BlogTitle
           ,@BlogAuthor
           ,@BlogContent)";           

            int result = -_dapperService.Execute(query, blog);

            string message = result > 0 ? "Saving successful." : "Saving failed.";
            return Ok(message);
        }

        // Update
        [HttpPut("{id}")]
        public IActionResult UpdateBlog(int id, BlogModel blog)
        {
            var item = FindById(id);
            if(item is null)
            {
                return NotFound("No data found.");
            }

            blog.BlogId = id;
            string query = @"UPDATE [dbo].[Tbl_Blog]
                           SET [BlogTitle] = @BlogTitle
                              ,[BlogAuthor] = @BlogAuthor
                              ,[BlogContent] = @BlogContent
                         WHERE BlogId=@BlogId";

            int result = -_dapperService.Execute(query, blog);

            string message = result > 0 ? "Updating successful." : "Updating failed.";
            return Ok(message);
        }

        // Update
        [HttpPatch("{id}")]
        public IActionResult PatchBlog(int id, BlogModel blog)
        {
            var item = FindById(id);
            if (item is null)
            {
                return NotFound("No data found.");
            }

            string conditions = string.Empty;

            if(!string.IsNullOrEmpty(blog.BlogTitle))
            {
                conditions += "[BlogTitle] = @BlogTitle, ";
            }

            if (!string.IsNullOrEmpty(blog.BlogAuthor))
            {
                conditions += "[BlogAuthor] = @BlogAuthor, ";
            }

            if (!string.IsNullOrEmpty(blog.BlogContent))
            {
                conditions += "[BlogContent] = @BlogContent, ";
            }

            if (conditions.Length == 0)
            {
                return NotFound("No data to update.");
            }

            conditions= conditions.Substring(0,conditions.Length - 2);
            blog.BlogId = id;

            string query = $@"UPDATE [dbo].[Tbl_Blog]
                           SET {conditions}
                         WHERE BlogId=@BlogId";

            int result = -_dapperService.Execute(query, blog);

            string message = result > 0 ? "Updating successful." : "Updating failed.";
            return Ok(message);
        }

        // Delete
        [HttpDelete("{id}")]
        public IActionResult DeleteBlog(int id)
        {
            var item = FindById(id);
            if (item is null)
            {
                return NotFound("No data found.");
            }

            string query = @"DELETE FROM [dbo].[Tbl_Blog]
                            WHERE BlogId=@BlogId";                    

            int result = -_dapperService.Execute(query, id);

            string message = result > 0 ? "Deleting successful." : "Deleting failed.";
            return Ok(message);
        }

        private BlogModel? FindById(int id) 
        {
            string query = "select * from Tbl_Blog where BlogId=@BlogId";
            var item = _dapperService.QueryFirstOrDefault<BlogModel>(query, new BlogModel { BlogId = id });
            return item;
        }
    }
}
