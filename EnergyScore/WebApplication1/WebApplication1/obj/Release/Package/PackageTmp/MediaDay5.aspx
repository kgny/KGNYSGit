<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MediaDay5.aspx.cs" Inherits="QCA.MediaDay5" %>

<%@ Register assembly="DevExpress.Web.v10.2, Version=10.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPanel" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxEditors.v10.2, Version=10.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v10.2, Version=10.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPopupControl" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v10.2, Version=10.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxRoundPanel" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxGridView.v10.2, Version=10.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v10.2, Version=10.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxUploadControl" tagprefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style7
        {
            width: 150px;
        }
        .style8
        {
            width: 73px;
        }
        .style11
        {
            width: 75px;
        }
        .style12
        {
            width: 74px;
        }
        .style13
        {
            width: 661px;
        }
        .style1
        {}
        .style1
        {}
        .style1
        {}
        .style1
        {}
        .style1
        {}
        .style1
        {}
    </style>
    </head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <dx:ASPxRoundPanel ID="ASPxRoundPane1" runat="server" ClientIDMode="AutoID" HeaderText="同一介质在不同单位比重分析"
        Width="900px" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css" CssPostfix="Office2010Blue"
        EnableDefaultAppearance="False" GroupBoxCaptionOffsetX="6px" GroupBoxCaptionOffsetY="-19px"
        SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css" 
        Height="380px">
        <ContentPaddings PaddingBottom="10px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="10px" />
        <HeaderStyle>
            <Paddings PaddingBottom="6px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="3px" />
        </HeaderStyle>
        <PanelCollection>
            <dx:PanelContent ID="PanelContent1" runat="server" SupportsDisabledAttribute="True">
                <asp:UpdatePanel ID="UpdatePanel_Pop" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <table style="width: 100%; height: 349px;">
                            <tr>
                                <td>
                                    <table style="width: 100%;">
                                        <tr>
                                            <td align="center" class="style8">
                                                <dx:ASPxLabel ID="ASPxLabel1" runat="server" Text="选择日期:">
                                                </dx:ASPxLabel>
                                            </td>
                                            <td class="style7">
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
                                            <td align="center" class="style11">
                                                <dx:ASPxLabel ID="ASPxLabel2" runat="server" Text="至">
                                                </dx:ASPxLabel>
                                            </td>
                                            <td>
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
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table style="width: 100%;">
                                        <tr>
                                            <td align="center" class="style12">
                                                <dx:ASPxLabel ID="ASPxLabel4" runat="server" Text="介质名称:">
                                                </dx:ASPxLabel>
                                            </td>
                                            <td class="style13">
                                                <dx:ASPxComboBox ID="ASPxComboBox_Media" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                    CssPostfix="Office2010Blue" Height="21px" Spacing="0" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                    ValueType="System.String" Width="150px">
                                                    <LoadingPanelImage Url="~/App_Themes/Office2010Blue/Editors/Loading.gif">
                                                    </LoadingPanelImage>
                                                    <LoadingPanelStyle ImageSpacing="5px">
                                                    </LoadingPanelStyle>
                                                    <ButtonStyle Width="13px">
                                                    </ButtonStyle>
                                                </dx:ASPxComboBox>
                                            </td>
                                            <td>

                                                <dx:ASPxButton ID="ASPxButton_Select" runat="server" ClientIDMode="AutoID" 
                                                    CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css" 
                                                    CssPostfix="Office2010Blue" Height="23px" OnClick="ASPxButton_Select_Click" 
                                                    SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css" 
                                                    Style="margin-left: 0px" Text="分析" Width="90px">
                                                </dx:ASPxButton>

                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:chart ID="ChartColumn" runat="server" backcolor="Gainsboro" 
                                        backgradientstyle="TopBottom" borderlinecolor="Silver" 
                                        borderlinedashstyle="Solid" cssclass="style1" height="280px" palette="Excel" 
                                        width="865px">
                                        <series>
                                            <asp:series charttype="Pie" name="Series1">
                                            </asp:series>
                                        </series>
                                        <chartareas>
                                            <asp:chartarea backcolor="Transparent" name="ChartArea1">
                                            </asp:chartarea>
                                        </chartareas>
                                    </asp:chart>

                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <dx:ASPxGridView ID="ASPxGridView" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                        CssPostfix="Office2010Blue" OnBeforeColumnSortingGrouping="ASPxGridView_BeforeColumnSortingGrouping"
                                        OnPageIndexChanged="ASPxGridView_PageIndexChanged" Width="100%">
                                        <SettingsBehavior ColumnResizeMode="Control" />
                                        <SettingsPager AlwaysShowPager="True" NumericButtonCount="6" PageSize="200">
                                            <NextPageButton Text="下一页">
                                            </NextPageButton>
                                            <PrevPageButton Text="上一页">
                                            </PrevPageButton>
                                            <Summary AllPagesText="页：{0}/{1} ({2}行)" Text="页：{0}/{1} ({2}行)" />
                                        </SettingsPager>
                                        <Settings ShowHorizontalScrollBar="True" ShowVerticalScrollBar="True" 
                                            VerticalScrollableHeight="280" />
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
                                        <StylesPager>
                                            <PageNumber ForeColor="#3E4846">
                                            </PageNumber>
                                            <Summary ForeColor="#1E395B">
                                            </Summary>
                                        </StylesPager>
                                        <StylesEditors ButtonEditCellSpacing="0">
                                            <ProgressBar Height="21px">
                                            </ProgressBar>
                                        </StylesEditors>
                                    </dx:ASPxGridView>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table style="width: 100%;">
                                        <tr>
                                            <td align="center">
                                                <asp:UpdatePanel ID="UpdatePanel_SaveAs" runat="server" ChildrenAsTriggers="False"
                                                    UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <dx:ASPxButton ID="ASPxButton_PopSave" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                            CssPostfix="Office2010Blue" OnClick="ASPxButton_PopSave_Click" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                            Style="margin-left: 0px" Text="保存数据" Width="90px" Height="23px">
                                                        </dx:ASPxButton>
                                                    </ContentTemplate>
                                                    <Triggers>
                                                        <asp:PostBackTrigger ControlID="ASPxButton_PopSave" />
                                                    </Triggers>
                                                </asp:UpdatePanel>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </dx:PanelContent>
        </PanelCollection>
    </dx:ASPxRoundPanel>
    </form>
</body>
</html>
