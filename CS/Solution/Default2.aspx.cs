﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Solution {
    public partial class Default2 : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {
            if (!string.IsNullOrEmpty(Request.QueryString["id"]))
                Response.Write("ID = " + Request.QueryString["id"]);
            if (!string.IsNullOrEmpty(Request.QueryString["name"]))
                Response.Write("<br/>Category Name = " + Request.QueryString["name"]);
        }
    }
}