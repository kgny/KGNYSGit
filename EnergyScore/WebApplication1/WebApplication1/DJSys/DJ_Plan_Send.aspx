<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DJ_Plan_Send.aspx.cs" Inherits="WebApplication1.DJSys.DJ_Plan_Send" %>

<%@ Register Assembly="DevExpress.Web.ASPxEditors.v10.2, Version=10.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.ASPxGridView.v10.2, Version=10.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v10.2, Version=10.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxRoundPanel" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v10.2, Version=10.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxPanel" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>计划下发</title>
    <script type="text/javascript">
    // <![CDATA[
        function grid_SelectionChanged(s, e) {
            s.GetSelectedFieldValues("DJ_PLAN", GetSelectedFieldValuesCallback);
        }
        function GetSelectedFieldValuesCallback(values) {
            selList.BeginUpdate();
            try {
                selList.ClearItems();
                for (var i = 0; i < values.length; i++) {
                    selList.AddItem(values[i]);
                }
            } finally {
                selList.EndUpdate();
            }
            document.getElementById("selCount").innerHTML = grid.GetSelectedRowCount();
        }
      // ]]> 
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" />
    <div>
        <table width="100%">
            <div>
                <td valign="top">
                    <dx:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                        CssPostfix="Office2010Blue" EnableDefaultAppearance="False" GroupBoxCaptionOffsetX="6px"
                        GroupBoxCaptionOffsetY="-19px" HeaderText="点检计划下发表" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                        Width="100%" Style="margin-right: 0px">
                        <ContentPaddings PaddingBottom="10px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="10px" />
                        <HeaderStyle>
                            <Paddings PaddingBottom="6px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="3px" />
                            <Paddings PaddingLeft="9px" PaddingTop="3px" PaddingRight="11px" PaddingBottom="6px">
                            </Paddings>
                        </HeaderStyle>
                        <PanelCollection>
                            <dx:PanelContent ID="PanelContent1" runat="server" SupportsDisabledAttribute="True">
                                <table style="width: 100%;">
                                    <tr>
                                        <td width="100%" valign="top">
                                            <asp:UpdatePanel ID="UpdatePanel_Confirm" runat="server" UpdateMode="Conditional"
                                                ChildrenAsTriggers="False">
                                                <ContentTemplate>
                                                    <table style="width: 100%;">
                                                        <tr>
                                                            <td align="center" style="width: 10%">
                                                                <dx:ASPxLabel ID="ASPxLabel1" runat="server" Text="选择日期:">
                                                                </dx:ASPxLabel>
                                                            </td>
                                                            <td style="width: 6%">
                                                                <dx:ASPxDateEdit ID="ASPxDateEdit_Begin" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                    CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                    Height="22px" Width="150px" EditFormatString="yyyy-MM-dd">
                                                                    <CalendarProperties>
                                                                        <HeaderStyle Spacing="1px" />
                                                                    </CalendarProperties>
                                                                    <ButtonStyle Width="13px">
                                                                    </ButtonStyle>
                                                                </dx:ASPxDateEdit>
                                                            </td>
                                                            <td align="center" style="width: 6%">
                                                                <dx:ASPxLabel ID="ASPxLabel2" runat="server" Text="至">
                                                                </dx:ASPxLabel>
                                                            </td>
                                                            <td style="width: 6%">
                                                                <dx:ASPxDateEdit ID="ASPxDateEdit_End" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                    CssPostfix="Office2010Blue" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                    Width="150px" EditFormatString="yyyy-MM-dd">
                                                                    <CalendarProperties>
                                                                        <HeaderStyle Spacing="1px" />
                                                                    </CalendarProperties>
                                                                    <ButtonStyle Width="13px">
                                                                    </ButtonStyle>
                                                                </dx:ASPxDateEdit>
                                                            </td>
                                                            <td style="width: 10%;" align="right" valign="top">
                                                                <%-- 查询按钮--%>
                                                                <dx:ASPxButton ID="ASPxButton1" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                    CssPostfix="Office2010Blue" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                    Style="margin-left: 0px" Text="查询" Width="70px" OnClick="btnQuery">
                                                                </dx:ASPxButton>
                                                            </td>
                                                            <td style="width: 10%;" align="top">
                                                                <%-- 下发按钮--%>
                                                                <dx:ASPxButton ID="btn_DownLoad" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                    CssPostfix="Office2010Blue" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                    Style="margin-left: 0px" Text="下发" Width="70px" OnClick="btnDlownLodClick">
                                                                </dx:ASPxButton>
                                                            </td>
                                                            <td style="width: 35%;" align="top">
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </ContentTemplate>
                                            </asp:UpdatePanel>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="100%" valign="top">
                                            <dx:ASPxRoundPanel ID="ASPxRoundPanel3" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                CssPostfix="Office2010Blue" EnableDefaultAppearance="False" GroupBoxCaptionOffsetX="6px"
                                                GroupBoxCaptionOffsetY="-19px" HeaderText="点检计划信息" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                Width="100%" View="GroupBox">
                                                <ContentPaddings PaddingBottom="10px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="10px" />
                                                <HeaderStyle>
                                                    <Paddings PaddingBottom="6px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="3px" />
                                                </HeaderStyle>
                                                <PanelCollection>
                                                    <dx:PanelContent ID="PanelContent4" runat="server" SupportsDisabledAttribute="True">
                                                        <asp:UpdatePanel ID="UpdatePanel_Cast" runat="server" UpdateMode="Always" ChildrenAsTriggers="True">
                                                            <ContentTemplate>
                                                                <table style="width: 100%;">
                                                                    <dx:ASPxGridView ID="ASPxGridView" runat="server" ClientIDMode="AutoID" ClientInstanceName="grid"
                                                                        CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css" CssPostfix="Office2010Blue"
                                                                        Width="100%" KeyFieldName="SEQ_NO" OnBeforeColumnSortingGrouping="ASPxGridView_BeforeColumnSortingGrouping"
                                                                        OnPageIndexChanged="ASPxGridView_PageIndexChanged">
                                                                        <SettingsBehavior ColumnResizeMode="Control" />
                                                                        <SettingsPager AlwaysShowPager="True" NumericButtonCount="6" PageSize="50">
                                                                            <NextPageButton Text="下一页">
                                                                            </NextPageButton>
                                                                            <PrevPageButton Text="上一页">
                                                                            </PrevPageButton>
                                                                            <Summary AllPagesText="页：{0}/{1} ({2}行)" Text="页：{0}/{1} ({2}行)" />
                                                                        </SettingsPager>
                                                                        <Settings ShowHorizontalScrollBar="True" ShowVerticalScrollBar="True" VerticalScrollableHeight="280" />
                                                                        <SettingsText EmptyHeaders=" " />
                                                                        <Images SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css">
                                                                            <LoadingPanelOnStatusBar Url="~/App_Themes/Office2010Blue/GridView/Loading.gif">
                                                                            </LoadingPanelOnStatusBar>
                                                                            <LoadingPanel Url="~/App_Themes/Office2010Blue/GridView/Loading.gif">
                                                                            </LoadingPanel>
                                                                        </Images>
                                                                        <ImagesFilterControl>
                                                                            <LoadingPanel Url="~/App_Themes/Office2010Blue/GridView/Loading.gif">
                                                                            </LoadingPanel>
                                                                        </ImagesFilterControl>
                                                                        <Styles CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css" CssPostfix="Office2010Blue">
                                                                            <Header ImageSpacing="5px" SortingImageSpacing="5px">
                                                                            </Header>
                                                                            <AlternatingRow Enabled="True">
                                                                            </AlternatingRow>
                                                                            <LoadingPanel ImageSpacing="5px">
                                                                            </LoadingPanel>
                                                                        </Styles>
                                                                        <StylesEditors ButtonEditCellSpacing="0">
                                                                            <ProgressBar Height="21px">
                                                                            </ProgressBar>
                                                                        </StylesEditors>
                                                                        <Columns>
                                                                            <dx:GridViewCommandColumn ShowSelectCheckbox="True" VisibleIndex="0">
                                                                                <HeaderTemplate>
                                                                                    <input type="checkbox" onclick="grid.SelectAllRowsOnPage(this.checked);" title="" />
                                                                                    <asp:Label ID="Label1" Text="全选" runat="server"></asp:Label>
                                                                                </HeaderTemplate>
                                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                            </dx:GridViewCommandColumn>
                                                                            <dx:GridViewDataColumn FieldName="SEQ_NO" Caption="顺序号" VisibleIndex="1" Width="50px"/>
                                                                            <dx:GridViewDataColumn FieldName="RECORD_TIME" Caption="时间" VisibleIndex="2" />
                                                                            <dx:GridViewDataColumn FieldName="DJ_PLAN" Caption="计划号" VisibleIndex="3" />
                                                                            <dx:GridViewDataColumn FieldName="DJ_LJ" Caption="点检路径" VisibleIndex="4" Width="200px" />
                                                                            <dx:GridViewDataColumn FieldName="DJ_MAN" Caption="点检人" VisibleIndex="5" />
                                                                            <dx:GridViewDataColumn FieldName="DJ_GROUP" Caption="班组" VisibleIndex="6" />
                                                                            <%--<dx:GridViewDataColumn FieldName="DJ_STATUS" Caption="计划状态" VisibleIndex="7" />--%>
                                                                            <dx:GridViewDataComboBoxColumn FieldName="DJ_STATUS" Caption="计划状态" VisibleIndex="7">
                                                                                <PropertiesComboBox ValueType="System.String" Spacing="0">
                                                                                </PropertiesComboBox>
                                                                            </dx:GridViewDataComboBoxColumn>
                                                                        </Columns>
                                                                        <ClientSideEvents SelectionChanged="grid_SelectionChanged" />
                                                                    </dx:ASPxGridView>
                                                                </table>
                                                            </ContentTemplate>
                                                        </asp:UpdatePanel>
                                                    </dx:PanelContent>
                                                </PanelCollection>
                                            </dx:ASPxRoundPanel>
                                        </td>
                                    </tr>
                                </table>
                            </dx:PanelContent>
                        </PanelCollection>
                    </dx:ASPxRoundPanel>
                </td>
            </div>
        </table>
        <%--<asp:UpdatePanel id="UpdatePanel1" runat="server" Visible="false">
     	<ContentTemplate>
     		<%--<asp:Content ID="Content1" ContentPlaceHolderID="ContentHolder" runat="Server">--%>
        <%--<script type="text/javascript">
     			    function grid_SelectionChanged(s, e) {
     			        s.GetSelectedFieldValues("ContactName", GetSelectedFieldValuesCallback);
     			    }
     			    function GetSelectedFieldValuesCallback(values) {
     			        selList.BeginUpdate();
     			        try {
     			            selList.ClearItems();
     			            for (var i = 0; i < values.length; i++) {
     			                selList.AddItem(values[i]);
     			            }
     			        } finally {
     			            selList.EndUpdate();
     			        }
     			        document.getElementById("selCount").innerHTML = grid.GetSelectedRowCount();
     			    }
     			</script>
     			<div style="float: left; width: 20%">
     				<div class="BottomPadding">
                     Selected values:
                    </div>
               				<dx:ASPxListBox ID="ASPxListBox1" ClientInstanceName="selList" runat="server" Height="250px" Width="100%"/>
               				<div class="TopPadding">
                            Selected count: <span id="selCount" style="font-weight: bold">0</span>
                            </div>
     			</div>
     			<div style="float: right; width: 78%">
     				<dx:ASPxGridView ID="grid" ClientInstanceName="grid" runat="server"  KeyFieldName="CustomerID" Width="100%">
     					<Columns>
     						<dx:GridViewCommandColumn ShowSelectCheckbox="True" VisibleIndex="0">
     						</dx:GridViewCommandColumn>
     						<dx:GridViewDataColumn FieldName="ContactName" VisibleIndex="1"/>
     						<dx:GridViewDataColumn FieldName="CompanyName" VisibleIndex="2"/>
     						<dx:GridViewDataColumn FieldName="City" VisibleIndex="3"/>
     						<dx:GridViewDataColumn FieldName="Region" VisibleIndex="4"/>
     						<dx:GridViewDataColumn FieldName="Country" VisibleIndex="5"/>
     					</Columns>
     					<%--<ClientSideEvents SelectionChanged="grid_SelectionChanged"/>
     				</dx:ASPxGridView>
     			</div>
     		<%--</asp:Content>
     	</ContentTemplate>
     </asp:UpdatePanel>--%>
    </div>
    </form>
</body>
</html>
