<%@ Page Async="true" Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Layout.Master" CodeBehind="ApiClient.aspx.vb" Inherits="ElectronicStoreClient.ApiClient" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="padding: 150px">
    <br />
        <!--API Login Credentials-->
<%--        <div id="loginDiv" runat="server">
            <label>Email:</label>
            <input type="text" id="tbEmail" runat="server" />
            <label>Password:</label>
            <input type="password" id="tbPassword" runat="server" />
            <asp:Button ID="btnApiLogin" runat="server" Text="Login" />     
        </div>
        <a href="Login-Register.aspx">Register for API Access</a>
            <asp:Label ID="lblLoginResult" runat="server" Font-Bold="true" Text="" Visible="false" CssClass="alignCenter"></asp:Label>
            <asp:Button ID="btnApiLogout" runat="server" Text="Logout" Visible="false"/>--%>


    <br />
    <br />

        <!--Get All Products-->
        <asp:Button ID="btnAllProducts" CssClass="alignCenter" runat="server" Text="Get All Products" />
        <asp:GridView ID="gvAllProducts" CssClass="gvDesign" runat="server" HorizontalAlign="Center" autogeneratecolumns="False">
            <Columns>
                <asp:BoundField DataField="ProductID" HeaderText="ProductID" SortExpression="ProductID"/>
                <asp:BoundField DataField="ProductNo" HeaderText="Product No" SortExpression="ProductNo"/>
                <asp:BoundField DataField="ProductName" HeaderText="Product Name" SortExpression="ProductName"/>
                <asp:BoundField DataField="ProductDescription" HeaderText="Product Description" SortExpression="ProductDescription"/>
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price"/>
                <asp:BoundField DataField="SubCategoryID" HeaderText="Sub Category ID" SortExpression="SubCategoryID"/>
                <asp:BoundField DataField="Featured" HeaderText="Featured" SortExpression="Featured"/>
                <asp:BoundField DataField="MainCategoryID" HeaderText="Main Category ID" SortExpression="MainCategoryID"/>
            </Columns>
            <AlternatingRowStyle CssClass="myAltRowClass" />
        </asp:GridView>
        <br />
        <br />

           <!--Get All Reviews-->
<%--        <asp:Button ID="btnAllReviews" CssClass="alignCenter" runat="server" Text="Get All Reviews" />
        <asp:GridView ID="gvAllReviews" CssClass="gvDesign" runat="server" HorizontalAlign="Center" autogeneratecolumns="False">
            <Columns>
                <asp:BoundField DataField="ReviewID" HeaderText="ReviewID" SortExpression="ReviewID"/>
                <asp:BoundField DataField="ProductID" HeaderText="ProductID" SortExpression="ProdcutID"/>
                <asp:BoundField DataField="UserName" HeaderText="User Name" SortExpression="UserName"/>
                <asp:BoundField DataField="Rating" HeaderText="Rating" SortExpression="Rating"/>
                <asp:BoundField DataField="UserReview" HeaderText="UserReview" SortExpression="UserRview"/>
            </Columns>
            <AlternatingRowStyle CssClass="myAltRowClass" />
        </asp:GridView>
        <br />
        <br />--%>
        
        <div class="alignCenter">
            <!--Get Product by ID-->
            <label>Get Product ID:</label>
            <input type="text" id="tbProductID" runat="server" />
            <asp:Button ID="btnProductID" runat="server" Text="Get Product by ID" />
        </div>
        <asp:GridView ID="gvProductID" CssClass="gvDesign" runat="server" HorizontalAlign="Center" autogeneratecolumns="False">
            <Columns>
                <asp:BoundField DataField="ProductID" HeaderText="ProductID" SortExpression="DateField" />
                <asp:BoundField DataField="ProductNo" HeaderText="Product No" SortExpression="ProductNo" />
                <asp:BoundField DataField="ProductName" HeaderText="Product Name" SortExpression="ProductName" />
                <asp:BoundField DataField="ProductDescription" HeaderText="Product Description" SortExpression="ProductDescription" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="SubCategoryID" HeaderText="Sub Category ID" SortExpression="SubCategoryID" />
                <asp:BoundField DataField="Featured" HeaderText="Featured" SortExpression="Featured" />
                <asp:BoundField DataField="MainCategoryID" HeaderText="Main Category ID" SortExpression="MainCategoryID" />
            </Columns>

            <AlternatingRowStyle CssClass="myAltRowClass" />
        </asp:GridView>
        <br />
        <br />

<%--        <div class="alignCenter">
            <!--Get Review by ID-->
            <label>Get Review ID:</label>
            <input type="text" id="tbReviewID" runat="server" />
            <asp:Button ID="btnReviewID" runat="server" Text="Get Review by ID" />
        </div>
        <asp:GridView ID="gvReviewID" CssClass="gvDesign" runat="server" HorizontalAlign="Center" autogeneratecolumns="False">
            <Columns>
                <asp:BoundField DataField="ReviewID" HeaderText="ReviewID" SortExpression="ReviewID"/>
                <asp:BoundField DataField="ProductID" HeaderText="ProductID" SortExpression="ProdcutID"/>
                <asp:BoundField DataField="UserName" HeaderText="User Name" SortExpression="UserName"/>
                <asp:BoundField DataField="Rating" HeaderText="Rating" SortExpression="Rating"/>
                <asp:BoundField DataField="UserReview" HeaderText="UserReview" SortExpression="UserRview"/>
            </Columns>

            <AlternatingRowStyle CssClass="myAltRowClass" />
        </asp:GridView>
        <br />
        <br />--%>

        <div class="row">
            <div class="column">
                <!--Add and Update Product Inputs-->
                <label for="tbProductNo">ProductNo:</label>
                <input type="text" id="tbProductNo" runat="server" />

                <label for="tbProductName">ProductName:</label>
                <input type="text" id="tbProductName" runat="server" />

                <label for="tbProductDescription">ProductDescription:</label>
                <input type="text" id="tbProductDescription" runat="server" />

                <label for="tbPrice">Price:</label>
                <input type="text" id="tbPrice" runat="server" />

                <label for="tbSubCategoryID">SubCategoryID:</label>
                <input type="text" id="tbSubCategoryID" runat="server" />

                <label for="tbFeatured">Featured:</label>
                <input type="text" id="tbFeatured" runat="server" />

                <label for="tbMainCategoryID">MainCategoryID:</label>
                <input type="text" id="tbMainCategoryID" runat="server" />

            </div>
            <div>
                <br />
                <br />
                <!--Create Product-->
                    <asp:Button ID="btnCreateProduct" CssClass="alignCenter" runat="server" Text="Add New Product"/>
                <br />
                <br />
                <!--Update Product by ID-->
                <div  style="padding-left: 10px">
                    <label for="tbUpdateProductID" style="padding-left: 10px">Update Product ID:</label>
                    <input type="text" id="tbUpdateProductID" runat="server" />
                    <asp:Button ID="btnUpdateProduct" CssClass="alignCenter" runat="server" Text="Update Existing Product"/>
                </div>

            </div>
        </div> 
        
        <br />
        <br />

<%--         <div class="row">
            <div class="column">
                <!--Add and Update Review Inputs-->
                <label for="tbRProductID">ProductID:</label>
                <input type="text" id="tbRProductId" runat="server" />

                <label for="tbUserName">User Name:</label>
                <input type="text" id="tbUserName" runat="server" />

                <label for="tbRating">Rating:</label>
                <input type="text" id="tbRating" runat="server" />

                <label for="tbUserReview">User Reivew:</label>
                <input type="text" id="tbUserReview" runat="server" />

            </div>
            <div>
                <br />
                <br />
                <!--Create Review-->
                    <asp:Button ID="btnCreateReview" CssClass="alignCenter" runat="server" Text="Add New Review"/>
                <br />
                <br />
                <!--Update Review by ID-->
                <div  style="padding-left: 10px">
                    <label for="tbUpdateReviewID" style="padding-left: 10px">Update Review ID:</label>
                    <input type="text" id="tbUpdateReviewID" runat="server" />
                    <asp:Button ID="btnUpdateReview" CssClass="alignCenter" runat="server" Text="Update Existing Review"/>
                </div>

            </div>
        </div> --%>
        
        <br />
        <br />


        <div class="alignCenter">
            <!--Delete Product by ID-->
            <label>Delete Product ID:</label>
            <input type="text" id="tbDeleteProductID" runat="server" />
            <asp:Button ID="btnDeleteProductID" runat="server" Text="Delete Product by ID" />
        </div>


<%--        <br />
        <br />
        
         <br />
        <br />


        <div class="aligncenter">
            <!--delete review by id-->
            <label>delete review id:</label>
            <input type="text" id="tbdeletereviewid" runat="server" />
            <asp:button id="btndeletereviewid" runat="server" text="delete review by id" />
        </div>


        <br />
        <br />        
        <br />
        <br />


        <!--get all cart info-->
        <asp:button id="btnallcarts" class="aligncenter" runat="server" text="get all cart info" />
        <asp:gridview id="gvallcarts" cssclass="gvdesign" runat="server" horizontalalign="center" autogeneratecolumns="false">
            <columns>
                <asp:boundfield datafield="id" headertext="id" sortexpression="id" />
                <asp:boundfield datafield="cartid" headertext="cart id" sortexpression="cartid" />
                <asp:boundfield datafield="productid" headertext="product id" sortexpression="productid" />
                <asp:boundfield datafield="productname" headertext="product name" sortexpression="productname" />
                <asp:boundfield datafield="price" headertext="price" sortexpression="price" />
                <asp:boundfield datafield="quantity" headertext="quantity" sortexpression="quantity" />
                <asp:boundfield datafield="linetotal" headertext="line total" sortexpression="linetotal" />
            </columns>

            <alternatingrowstyle cssclass="myaltrowclass" />
        </asp:gridview>
        <br />
        <br />

        <!--delete cart line-->
        <div class="aligncenter">
            <label>delete cart row (id):</label>
            <input type="text" id="tbdeletecartlineid" runat="server" />
            <asp:button id="btndeletecartlineid" runat="server" text="delete cart line by id" />
        </div>
        <br />
        <br />
        <br />

        <!--get cart by cartid-->
        <div class="aligncenter">
            <label>get entire cart (cartid):</label>
            <input type="text" id="tbgetcartid" runat="server" />
            <asp:button id="btncartbyid" runat="server" text="get cart by cartid" />
        </div>
        <asp:gridview id="gvcartbyid" cssclass="gvdesign" runat="server" horizontalalign="center" autogeneratecolumns="false">
            <columns>
                <asp:boundfield datafield="cartid" headertext="cart id" sortexpression="cartid" />
                <asp:boundfield datafield="productid" headertext="product id" sortexpression="productid" />
                <asp:boundfield datafield="productname" headertext="product name" sortexpression="productname" />
                <asp:boundfield datafield="price" headertext="price" sortexpression="price" />
                <asp:boundfield datafield="quantity" headertext="quantity" sortexpression="quantity" />
                <asp:boundfield datafield="id" headertext="id" sortexpression="id" />
                <asp:boundfield datafield="linetotal" headertext="line total" sortexpression="linetotal" />
            </columns>

            <alternatingrowstyle cssclass="myaltrowclass" />
        </asp:gridview>
        <br />
        <br />

        <!--get current cart using cookie-->
        <asp:button id="btncurrentcart" cssclass="aligncenter" runat="server" text="get current cart" />
        <asp:gridview id="gvcurrentcart" cssclass="gvdesign" runat="server" horizontalalign="center" autogeneratecolumns="false">
                        <columns>
                <asp:boundfield datafield="cartid" headertext="cart id" sortexpression="cartid" />
                <asp:boundfield datafield="productid" headertext="product id" sortexpression="productid" />
                <asp:boundfield datafield="productname" headertext="product name" sortexpression="productname" />
                <asp:boundfield datafield="price" headertext="price" sortexpression="price" />
                <asp:boundfield datafield="quantity" headertext="quantity" sortexpression="quantity" />
                <asp:boundfield datafield="id" headertext="id" sortexpression="id" />
                <asp:boundfield datafield="linetotal" headertext="line total" sortexpression="linetotal" />
            </columns>
            <alternatingrowstyle cssclass="myaltrowclass" />
        </asp:gridview>
        <br />
        <br />

        <!--change cart qty-->
        <div class="aligncenter">
            <label>cart line to update (id):</label>
            <input type="text" id="tbupdateqtycartlineid" runat="server" />
            <label style="padding-left: 10px">new quantity:</label>
            <input type="text" id="tbupdateqtyamt" runat="server" />
            <asp:button id="btnupdatecartqty" runat="server" text="update quantity" />
        </div>
        <br />
        <br />

        <!--import all products-->
        <asp:button runat="server" id="btnimportallproducts" text="import all products to ecommerce db" />
        <br />
        <br />

          <!--import all reviews-->
        <asp:button runat="server" id="btnimportallreviews" text="import all reviews to ecommerce db" />
        <br />
        <br />

        <!--import product by id-->

        <label>product id:</label>
        <input type="text" id="tbimportproductid" runat="server" />
        <asp:button runat="server" id="btnimportproductid" text="import product to ecommerce db" />
    </div>--%>

    </div>
</asp:Content>
