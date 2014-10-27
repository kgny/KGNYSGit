<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DJ_Act_Info.aspx.cs" Inherits="WebApplication1.DJSys.DJ_Act_Info" %>
<%@ Register assembly="DevExpress.Web.v10.2, Version=10.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPanel" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxEditors.v10.2, Version=10.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v10.2, Version=10.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPopupControl" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v10.2, Version=10.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxRoundPanel" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxGridView.v10.2, Version=10.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v10.2, Version=10.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxUploadControl" tagprefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>点检记录表</title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
     <div>
    <table style="width: 900px;">
            <tr>
                <td valign="top">
                    <dx:ASPxRoundPanel 
                        ID="ASPxRoundPanel1" 
                        runat="server" 
                        ClientIDMode="AutoID" 
                        CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css" 
                        CssPostfix="Office2010Blue" 
                        EnableDefaultAppearance="False" 
                        GroupBoxCaptionOffsetX="6px" 
                        GroupBoxCaptionOffsetY="-19px" 
                        HeaderText="点检记录表" 
                        SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css" 
                        Width="100%" 
                        Height="593px" 
                        Style="margin-right: 0px">
                        <ContentPaddings PaddingBottom="10px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="10px" />
<ContentPaddings PaddingLeft="9px" PaddingTop="10px" PaddingRight="11px" PaddingBottom="10px"></ContentPaddings>

                        <HeaderStyle>
                            <Paddings PaddingBottom="6px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="3px" />
<Paddings PaddingLeft="9px" PaddingTop="3px" PaddingRight="11px" PaddingBottom="6px"></Paddings>
                        </HeaderStyle>
                        <PanelCollection>
                            <dx:PanelContent ID="PanelContent1" runat="server" SupportsDisabledAttribute="True">
                                <table style="width: 100%;">
                                    <tr>
                                        <td width="100%" valign="top">
                                        
                                            <asp:UpdatePanel 
                                                ID="UpdatePanel_Confirm" 
                                                runat="server" 
                                                UpdateMode="Conditional" 
                                                ChildrenAsTriggers="False">
                                                <ContentTemplate>
                                                    <table style="width: 100%;">
                                                        <tr>
                                                            <td align="center" style="width:8%">
                                                               <dx:ASPxLabel ID="ASPxLabel1" runat="server" Text="选择日期:">
                                                               </dx:ASPxLabel>
                                                            </td>
                                                            <td style="width:6%">
                                                            <dx:ASPxDateEdit 
                                                                    ID="ASPxDateEdit_Begin" 
                                                                    runat="server" 
                                                                    ClientIDMode="AutoID" 
                                                                    CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css" 
                                                                    CssPostfix="Office2010Blue" 
                                                                    Spacing="0" 
                                                                    SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css" 
                                                                    Height="22px" 
                                                                    Width="150px" 
                                                                    EditFormatString="yyyy-MM-dd">
                                                                <CalendarProperties>
                                                                    <HeaderStyle Spacing="1px" />
                                                                </CalendarProperties>
                                                                <ButtonStyle Width="13px">
                                                                </ButtonStyle>
                                                            </dx:ASPxDateEdit>
                                                            </td>
                                                            <td align="center" style="width:6%">
                                                            <dx:ASPxLabel ID="ASPxLabel2" runat="server" Text="至">
                                                            </dx:ASPxLabel>
                                                            </td>
                                                            <td style="width:6%">
                                                            <dx:ASPxDateEdit 
                                                                    ID="ASPxDateEdit_End" 
                                                                    runat="server" 
                                                                    ClientIDMode="AutoID" 
                                                                    CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css" 
                                                                    CssPostfix="Office2010Blue" 
                                                                    Spacing="0" 
                                                                    SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css" 
                                                                    Width="150px" 
                                                                    EditFormatString="yyyy-MM-dd">
                                                                <CalendarProperties>
                                                                    <HeaderStyle Spacing="1px" />
                                                                </CalendarProperties>
                                                                <ButtonStyle Width="13px">
                                                                </ButtonStyle>
                                                            </dx:ASPxDateEdit>
                                                            </td>
                                                            <td style="width: 25%;" align="center">
                                                            <%-- 查询按钮--%>
                                                                <dx:ASPxButton ID="ASPxButton1" 
                                                                     
                                                                    runat="server" 
                                                                    ClientIDMode="AutoID" 
                                                                    CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css" 
                                                                    CssPostfix="Office2010Blue" 
                                                                    SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css" 
                                                                    Style="margin-left: 0px" 
                                                                    Text="查询" 
                                                                    Width="70px" 
                                                                    onclick="btnQuery">
                                                                </dx:ASPxButton>
                                                            </td>
                                                            <td style="width: 25%;" align="center">
                                                              <%-- 下发按钮--%>
                                                                <%--<dx:ASPxButton 
                                                                    ID="btn_DownLoad" 
                                                                    runat="server" 
                                                                    ClientIDMode="AutoID" 
                                                                    CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css" 
                                                                    CssPostfix="Office2010Blue" 
                                                                    SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css" 
                                                                    Style="margin-left: 0px" 
                                                                    Text="下发" 
                                                                    Width="70px" 
                                                                    OnClick="btnDlownLodClick">
                                                                </dx:ASPxButton>--%>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </ContentTemplate>
                                        </asp:UpdatePanel>

                                            <dx:ASPxRoundPanel 
                                                ID="ASPxRoundPanel3" 
                                                runat="server" 
                                                ClientIDMode="AutoID" 
                                                CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css" 
                                                CssPostfix="Office2010Blue" 
                                                EnableDefaultAppearance="False" 
                                                GroupBoxCaptionOffsetX="6px" 
                                                GroupBoxCaptionOffsetY="-19px" 
                                                HeaderText="点检表信息" 
                                                SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css" 
                                                Width="100%" 
                                                View="GroupBox">
                                                <ContentPaddings 
                                                    PaddingBottom="10px" 
                                                    PaddingLeft="9px" 
                                                    PaddingRight="11px" 
                                                    PaddingTop="10px"/>
<ContentPaddings PaddingLeft="9px" PaddingTop="10px" PaddingRight="11px" PaddingBottom="10px"></ContentPaddings>

                                                <HeaderStyle>
                                                    <Paddings 
                                                        PaddingBottom="6px" 
                                                        PaddingLeft="9px" 
                                                        PaddingRight="11px" 
                                                        PaddingTop="3px"/>
<Paddings PaddingLeft="9px" PaddingTop="3px" PaddingRight="11px" PaddingBottom="6px"></Paddings>
                                                </HeaderStyle>
                                                
                                                <PanelCollection>
                                                    
                                                <dx:PanelContent ID="PanelContent3" runat="server" SupportsDisabledAttribute="True">
                                               
                                                 
                                                <dx:PanelContent 
                                                        ID="PanelContent4" 
                                                        runat="server" 
                                                        SupportsDisabledAttribute="True">
                                                        <asp:UpdatePanel 
                                                            ID="UpdatePanel_Cast" 
                                                            runat="server" 
                                                            UpdateMode="Always" 
                                                            ChildrenAsTriggers="True">
                                                            <ContentTemplate>
                                                                <table style="width: 100%;">
                                                                   <tr>
                                                                  <dx:ASPxGridView 
                                                                        ID="ASPxGridView" 
                                                                        runat="server" 
                                                                        ClientIDMode="AutoID" 
                                                                        CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css" 
                                                                        CssPostfix="Office2010Blue" 
                                                                        Width="100%" 
                                                                        onbeforecolumnsortinggrouping="ASPxGridView_BeforeColumnSortingGrouping" 
                                                                        onpageindexchanged="ASPxGridView_PageIndexChanged">
                                                                   <SettingsBehavior ColumnResizeMode="Control" />
                                                                    <SettingsPager 
                                                                        AlwaysShowPager="True" 
                                                                        NumericButtonCount="6" 
                                                                        PageSize="50">
                                                                    <NextPageButton Text="下一页">
                                                                    </NextPageButton>
                                                                    <PrevPageButton Text="上一页">
                                                                    </PrevPageButton>
                                                                    <Summary AllPagesText="页：{0}/{1} ({2}行)" Text="页：{0}/{1} ({2}行)" />
                                                                </SettingsPager>
                                                                    <Settings 
                                                                        ShowHorizontalScrollBar="True" 
                                                                        ShowVerticalScrollBar="True" 
                                                                        VerticalScrollableHeight="280"/>
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
                                                                   </dx:ASPxGridView>
                                                                   </tr>
                                                                </table>
                                                            </ContentTemplate>
                                                        </asp:UpdatePanel>
                                                    </dx:PanelContent>
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
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
