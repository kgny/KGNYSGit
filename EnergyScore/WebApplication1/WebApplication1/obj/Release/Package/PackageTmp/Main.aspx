<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="QCA.Main" %>
<%@ Register assembly="DevExpress.Web.v10.2, Version=10.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPanel" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxEditors.v10.2, Version=10.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v10.2, Version=10.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPopupControl" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v10.2, Version=10.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxRoundPanel" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v10.2, Version=10.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxMenu" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v10.2, Version=10.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPanel" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxEditors.v10.2, Version=10.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v10.2, Version=10.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxMenu" tagprefix="dx1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head id="Head1" runat="server">

    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   
    <link rel="stylesheet" href="Styles/demo.css" type="text/css"/>
	<link rel="stylesheet" href="Styles/zTreeStyles/zTreeStyle.css" type="text/css"/>
     <link href="~/Styles/Site.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="Scripts/jquery-1.4.4.min.js"></script>
	<script type="text/javascript" src="Scripts/jquery.ztree.core-3.1.js"></script>

    <script type="text/javascript">
        var menu, tags; 
        var tagsNum = 0;
        var tid = 0;
        var zTreeObj,nodes,
        setting = {
            view: {
                showIcon: showIconForTree

            },
            data: {
                simpleData: {
                    enable: true
                }
            },
            callback: {
                onClick: nodeClick
            }
            


        };

        var zNodes = [
            { id: 1, pId: 0, name: "计划管理", isParent: true, open: false },
            { id: 11, pId: 1, name: "计划接收", tag: "DJSys/DJ_Plan_Rev.aspx" },
			{ id: 12, pId: 1, name: "计划发送", tag: "DJSys/DJ_Plan_Send.aspx" },
//			{ id: 13, pId: 1, name: "工艺装备", isParent: true, open: false },
//            { id: 131, pId: 13, name: "工艺装备（一）", tag: "ProcessEquip1.aspx" },
//            { id: 132, pId: 13, name: "工艺装备（二）", tag: "ProcessEquip2.aspx" },
//			{ id: 14, pId: 1, name: "能源消耗指标", tag: "EnergyConsume.aspx" },
//            { id: 15, pId: 1, name: "资源循环利用", tag: "ResourceRecycle.aspx" },
            { id: 2, pId: 0, name: "点检实绩管理", isParent: true, open: false },
            { id: 21, pId: 2, name: "数据接收", isParent: true, open: false },
            { id: 211, pId: 21, name: "点检记录表", tag: "DJSys/DJ_Act_Info.aspx" },
//            { id: 212, pId: 21, name: "同一介质在同一工序不同站所比重", tag: "MediaDay2.aspx" },
//            { id: 213, pId: 21, name: "同一介质在不同工序月变化趋势图", tag: "MediaDay3.aspx" },
//            { id: 214, pId: 21, name: "同一介质在不同单位月变化趋势图", tag: "MediaDay4.aspx" },
//            { id: 215, pId: 21, name: "同一介质在不同单位比重", tag: "MediaDay5.aspx" },
            { id: 22, pId: 2, name: "数据处理", isParent: true, open: false },
            { id: 221, pId: 22, name: "点击记录比较", tag: "DJSys/DJ_Act_Info.aspx" },
            { id: 222, pId: 22, name: "异常查询", tag: "DJSys/DJ_Act_Info.aspx" },
            { id: 223, pId: 22, name: "点检项目设备启停状态", tag: "DJSys/DJ_Act_Info.aspx" },
            { id: 224, pId: 22, name: "工时统计", tag: "DJSys/DJ_Act_Info.aspx" },
            { id: 224, pId: 22, name: "到位查询", tag: "DJSys/DJ_Act_Info.aspx" },

            { id: 3, pId: 0, name: "系统维护", isParent: true, open: false },
            { id: 31, pId: 3, name: "设备编码", tag: "DJSys/DJ_Act_Info.aspx" },
            { id: 32, pId: 3, name: "人员信息", tag: "DJSys/DJ_Act_Info.aspx" },

//            { id: 23, pId: 2, name: "漏检统计", isParent: true, open: false },
//            { id: 231, pId: 23, name: "同一产品在不同单位比重", tag: "ProductData1.aspx" },
//            { id: 232, pId: 23, name: "同一产品在不同单位月变化趋势图", tag: "ProductData2.aspx" },
//            { id: 24, pId: 2, name: "技术经济指标实绩分析", isParent: true, open: false },
//            { id: 241, pId: 24, name: "同一指标在不同单位变化趋势图", tag: "TargetData.aspx" },
//            { id: 25, pId: 2, name: "工序单耗实绩分析", isParent: true, open: false },
//            { id: 251, pId: 25, name: "同一产品在不同工序单耗变化趋势图", tag: "UnitConsumption.aspx" },
//            { id: 3, pId: 0, name: "工序能耗计算", isParent: true, open: false },
//            { id: 31, pId: 3, name: "烧结", isParent: true, open: false },
//            { id: 311, pId: 31, name: "烧结理论能耗计算设定", tag: "TheoryCake.aspx" },
//			{ id: 312, pId: 31, name: "烧结实际能耗计算设定", tag: "ActualCake.aspx" },
//            { id: 313, pId: 31, name: "烧结能耗计算模型", tag: "ModelCake.aspx" },
//            { id: 4, pId: 0, name: "煤气调度计算模型", tag: "GasMod.aspx" }
		];
 
		function showIconForTree(treeId, treeNode) {
			return !treeNode.isParent;
		};

		$(document).ready(function () {

		    $.fn.zTree.init($("#tree"), setting, zNodes);
		   
		});
        
		
		function nodeClick() {
		    zTreeObj = $.fn.zTree.getZTreeObj("tree");
		    nodes = zTreeObj.getSelectedNodes();
		    if (nodes[0].isParent) {
		        zTreeObj.expandNode(nodes[0]);
		        return;
		    }
		    var wel = $("#welcome");

		    wel[0].style.display = "none"//欢迎内容隐藏
	    menu =$("#topTags")[0]; //顶部菜单容器
	    		    tags = menu.getElementsByTagName("li"); //顶部菜单


	    		   
        
	    		    if (nodes.length > 0) {
	    		        for (var i = 0; i < tags.length; i++) {
	    		            if (tags[i].name == nodes[0].name) {

	    		                //  clearStyle();

	    		                // setHighLight(tags[i]);
	    		                //  clearContent();
	    		                var ci = $("#c" + i.toString())[0];
	    		                // ci.style.display = "block";
	    		                //2012,10.22新加,打开已存在页面即实现刷新
	    		                menu.removeChild(tags[i]); //删除当前标签

	    		                $("#main")[0].removeChild(ci); //删除当前frame


	    		                var fs = $("#main")[0].getElementsByTagName("iframe");
	    		                var ts = menu.getElementsByTagName("li");

	    		                for (var j = i; j < tags.length; j++) {
	    		                    var id = fs[j].id.split("c")[1] - 1;
	    		                    fs[j].id = "c" + id;
	    		                    ts[j].id = "p" + id;
	    		                }
	    		        
	    		                openNew(tags.length, nodes[0].name, i, nodes[0].tag);
	    		                clearStyle();
	    		                setHighLight($("#p" + (tags.length-1).toString())[0]);
	    		                clearContent();
	    		                var ci = $("#c" + (tags.length-1).toString());
	    		                ci[0].style.display = "block";
	    		               //
	    		                return;
	    		            }
	    		        }
	    		        
	    		        
		        tid = nodes[0].id;
		       
		    }
		  


            if (tags.length > 6) {
                alert("打开窗体数太多！");
                zTreeObj.selectNode(zTreeObj.getNodeByParam("name", tags[tags.length-1].name));
                return;
            }

            openNew(tags.length, nodes[0].name, tid, nodes[0].tag);  //设置标签显示文字

            clearStyle();
           
            setHighLight($("#p" + (tags.length - 1).toString())[0]);
                clearContent();
                var ci = $("#c" + (tags.length-1).toString());
                ci[0].style.display = "block";
              
                return false;
            
            

		}
		
		function openNew(id, name,tid,tag) {
		    var tagMenu = document.createElement("li");
		    var frame = document.createElement("iframe");
		    frame.id = "c" + id;
		   // frame.src = "BodyPage_" + tid + ".aspx";
		    frame.src = tag;
		    frame.setAttribute("class", "frame");
		    frame.frameBorder = "0";
		    $("#main")[0].appendChild(frame);
		    tagMenu.id = "p" + id;
		    tagMenu.name = name;
		    tagMenu.innerHTML = name + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp" + "<img src='Styles/xx.png' vertical-align=middle width=11 height=11 top=80%/>";
           
		    //标签点击事件
		    tagMenu.onclick = function (evt) {
		        for (i = 0; i < zNodes.length; i++) {
		            if (zNodes[i].name == name) {
		                var tagNode = zNodes[i];
		                zTreeObj.selectNode(zTreeObj.getNodeByParam("name", name));
		                break;
		            }
		        }
		        clearStyle();
		        //tagMenu.style.backgroundColor = "#fcecad";
		        setHighLight(this);
		        clearContent();
		        $("#c" + this.id.replace("p",""))[0].style.display = "block";
		    }
            //标签内关闭图片点击事件
		    tagMenu.getElementsByTagName("img")[0].onclick = function (evt) {
		        var color = tagMenu.style.backgroundColor;
		        evt = (evt) ? evt : ((window.event) ? window.event : null);
		        if (evt.stopPropagation) { evt.stopPropagation() } //取消opera和Safari冒泡行为;
		        this.parentNode.parentNode.removeChild(tagMenu); //删除当前标签

		        var curId = tagMenu.id.replace("p", "");

		        var cframe = $("#c" + curId)[0];
		        $("#main")[0].removeChild(cframe);
		        var fs = $("#main")[0].getElementsByTagName("iframe");
		        var ts = menu.getElementsByTagName("li");

		        for (var i = curId; i < tags.length; i++) {
		            var id = fs[i].id.split("c")[1] - 1;
		            fs[i].id = "c" + id;
		            ts[i].id = "p" + id;
		        }
		        if (tags.length == 0) {
		            zTreeObj.cancelSelectedNode();
		           
		        }

		        //设置如果关闭一个标签时，让最后一个标签得到焦点
		        if (color == "#fdf0bd") {
		            if (tags.length - 1 >= 0) {
		                clearStyle();
		                // tags[tags.length - 1].style.backgroundColor = "#fcecad";
		                setHighLight(tags[tags.length - 1]);
		                // clearContent();
		                var cc = tags[tags.length - 1].id.split("p");
		                $("#c" + cc[1])[0].style.display = "block";

		                for (var i = 0; i < zNodes.length; i++) {
		                    if (zNodes[i].name == tags[tags.length - 1].name) {
		                        var tagNode = zNodes[i];
		                        zTreeObj.selectNode(zTreeObj.getNodeByParam("name", tags[tags.length - 1].name));

		                        break;
		                    }
		                }
		            }
		            else {
		                // clearContent();

		                $("#welcome")[0].style.display = "block";
		            }

		        }


		    }
            menu.appendChild(tagMenu);
        
        }
      
        //清除标签样式
        function clearStyle() {
            for (var i = 0; i < tags.length; i++) {
                menu.getElementsByTagName("li")[i].style.backgroundColor = "#3a4f63";
                menu.getElementsByTagName("li")[i].style.borderColor = "#3a4f63";
                menu.getElementsByTagName("li")[i].style.color = "White";
                menu.getElementsByTagName("li")[i].style.borderBottomWidth = "0px";
                menu.getElementsByTagName("img")[i].style.display = "none";
                
            }
        }
        //清除内容
        function clearContent() {
            var f= $("#main")[0].getElementsByTagName("iframe");
           
            for (var i = 0; i < f.length; i++) {
                
                f[i].style.display = "none";
               
            }
        }
        

        //还原标签高亮样式
        function setHighLight(tag) {
            tag.style.backgroundColor = "#fdf0bd";
            tag.style.borderColor = "#fdf0bd";
            tag.style.borderBottomWidth = "1px";
            tag.style.borderBottomStyle = "solid";
            tag.style.color = "Black";
            tag.getElementsByTagName("img")[0].style.display = "inline";
           
            
        }
        </script>
  
    <style type="text/css" >
      body
      {
          font-size:12px;
          }       
 
 ul
 {
     margin:0;
     padding:0;
     }
 #topTags
{
    width:99.9%;
    height:25px;
    
    float:right;
    border:0px;
    margin:1px auto auto 1px;
    
    border-bottom:4px solid #fdf0bd;
  }

 #topTags li
{    
    list-style-type:none;
    float:left;
    overflow:hidden;  
    display:block;
    text-align:center;
    cursor:pointer;
    margin:3px 1px auto 0px;
    border:1px solid;
    line-height: 1.30em;
    padding: 3px 15px;
    text-decoration: none;
    white-space: nowrap; 
    border-left:0px solid #fdf0bd;  
    
}


.frame
{
    width:99.8%;
    height:95%;
    display:none;
    padding:0px;
    margin-left:1px;
    margin-top:2px;
    line-height:30px;
    border-right:1px solid Gray;
    border-left:1px solid White;
}
   
         .sayHello
         {
             height: 37px;
             width:100%;
             color:White;
         }
        #footer
        {
            text-align:center;
            width:100%;
            height:30px;
            margin:2px auto;
          
           line-height:30px;
          
        }

       #treeTag 
       {
           width:100%;
           height:16px;
          
           background-color:#FDF0BD;
           margin-left:1px;
           padding-top:4px;
           border:1px solid #F7C709;
           
       }  

            .style1
            {
                width: 93px;
            }
            
     </style>
      
</head>
<body>
    <form id="Form1" runat="server">
     <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <table style="width: 100%;">
        <tr>
            <td colspan="0" rowspan="0">
                <div class="page" style="color:#CCFFFF">
                    <div class="header" dir="ltr" style="width: 100%; text-align: left;">
                        <div class="title" align="center">
                            <dx:ASPxPanel ID="ASPxPanel1" runat="server" Width="100%" >
                                <PanelCollection>
                                    <dx:PanelContent ID="PanelContent1" runat="server" SupportsDisabledAttribute="True">
                                        <h1 style="font-size: x-large; font-weight: bold; color: #0000FF">
                                            点巡检系统服务端</h1>
                                    </dx:PanelContent>
                                </PanelCollection>
                            </dx:ASPxPanel>
                        </div>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td colspan="0" rowspan="0">
                <div class="content_wrap">
                    <div class="zTreeDemoBackground left">
                        <div id="treeTag">
                            &nbsp;&nbsp;管理菜单</div>
                        <ul id="tree" class="ztree">
                        </ul>
                    </div>
                    <div id="main" class="right ">
                        <div id="topTags">
                            <ul>
                            </ul>
                        </div>
                        <div id="welcome" style="display: block">
                            <div align="center">
                                <p class="sayHello">
                                    <strong>欢迎使用点巡检服务平台！</strong></p>
                            </div>
                        </div>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td colspan="0" rowspan="0">
                <div id="footer">
                <img src="Styles/MCC.png" class="style1" align="middle" alt=" "/>
        版权所有 © 2012 北京京诚鼎宇管理系统有限公司. 保留所有权利
                </div>
            </td>
        </tr>
    </table>
   </form>
    </body>
</html>
