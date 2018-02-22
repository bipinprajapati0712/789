using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
using ProductBO;


namespace ProductDAL
{
    public class Productado
    {
        public int AddProduct(Product123 P)
        {
            SqlConnection con = new SqlConnection("server=intvmsql01;user id=pj01test01;password=tcstvm;database=db01test01");
            con.Open();
            SqlCommand cmd = new SqlCommand("sp_insertproduct1349205_1",con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@pn",P.Pname);
            cmd.Parameters.AddWithValue("@c", P.Cat);
            cmd.Parameters.AddWithValue("@u", P.Up);
            cmd.Parameters.AddWithValue("@t", P.Tna);
            cmd.Parameters.AddWithValue("@desc", P.Desc);
            cmd.Parameters.AddWithValue("@sid", 0);
            cmd.Parameters["@sid"].Direction = ParameterDirection.Output;
            int rowaffected = cmd.ExecuteNonQuery();

            if (rowaffected > 0)
            {
                int pid = Convert.ToInt32(cmd.Parameters["@sid"].Value);
                return pid;
            }
            else { return 0; }

        }

        public object ViewProduct()
        {
            SqlConnection con = new SqlConnection("server=intvmsql01;user id=pj01test01;password=tcstvm;database=db01test01");
            con.Open();
            SqlDataAdapter adp = new SqlDataAdapter("select * from product1349205", con);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            return dt;
            /*SqlCommand cmd1 = new SqlCommand("select * from product1349205", con);

             SqlDataReader reader = cmd1.ExecuteReader();

            reader.Read();
             while (reader.Read())
            {
                 Console.WriteLine("\t{0}, \t{1}, \t{2},\t{3}, \t{4}, \t{5},", reader[0], reader[1], reader[2], reader[3], reader[4], reader[5]);
             }
             */
        }
    }
}
