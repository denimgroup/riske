//////////////////////////////////////////////////////////////////////
//  Copyright (c) 2007-2010 Denim Group, Ltd.
//  All rights reserved
//////////////////////////////////////////////////////////////////////

using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

/// <summary>
/// Summary description for DBUtil
/// </summary>
public class DBUtil
{
    public DBUtil()
    {

    }

    public static SqlConnection GetConnection()
    {
        SqlConnection retVal;
        string connString = ConfigurationManager.ConnectionStrings["databaseConnection"].ConnectionString;
        retVal = new SqlConnection(connString);
        retVal.Open();

        return (retVal);
    }

    public static void CloseConnection(SqlConnection sqlCon)
    {
        try
        {
            if (sqlCon != null)
            {
                sqlCon.Close();
            }
        }
        catch
        {
            //  TODO - Log this somewhere
        }
    }

    public static SqlDataReader ExecuteDataReader(SqlConnection con, string sql)
    {
        SqlCommand cmd;
        SqlDataReader retVal;

        cmd = new SqlCommand(sql);
        cmd.Connection = con;
        retVal = cmd.ExecuteReader();

        return (retVal);
    }

    public static void ExecuteUpdate(string sql)
    {
        SqlCommand cmd;
        SqlConnection con = GetConnection();

        cmd = new SqlCommand(sql);
        cmd.Connection = con;
        cmd.ExecuteNonQuery();

        CloseConnection(con);
    }

    //  From http://www.dotnetspider.com/forum/ViewForum.aspx?ForumId=11020
    public static DataTable GetTable(SqlDataReader sqlReader)
    {

        DataTable schemaTable = sqlReader.GetSchemaTable();
        DataTable outputTable = new DataTable("Name", "Namespace");
        DataColumn dcColumn;
        DataRow drRow;

        for (int i = 0; i < schemaTable.Rows.Count; i++)
        {
            dcColumn = new DataColumn();
            if (!outputTable.Columns.Contains(schemaTable.Rows[i]["ColumnName"].ToString()))
            {
                dcColumn.ColumnName = schemaTable.Rows[i]["ColumnName"].ToString();
                dcColumn.Unique = Convert.ToBoolean(schemaTable.Rows[i]["IsUnique"]);
                dcColumn.AllowDBNull = Convert.ToBoolean(schemaTable.Rows[i]["AllowDBNull"]);
                dcColumn.ReadOnly = Convert.ToBoolean(schemaTable.Rows[i]["IsReadOnly"]);
                outputTable.Columns.Add(dcColumn);
            }
        }

        while (sqlReader.Read())
        {

            drRow = outputTable.NewRow();
            for (int i = 0; i < sqlReader.FieldCount; i++)
            {
                drRow[i] = sqlReader.GetValue(i);
            }
            outputTable.Rows.Add(drRow);
        }

        return outputTable;

    }

}
