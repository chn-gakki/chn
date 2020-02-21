<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!-- BEGIN 从侧边栏 -->
		<div class="page-sidebar nav-collapse collapse">
			<!-- BEGIN 开始工具条菜单 -->        
			<ul class="page-sidebar-menu">
				<li>
					<!-- BEGIN 侧边栏显示开关按钮 -->
					<div class="sidebar-toggler hidden-phone"></div>
					<!-- END 侧边栏显示开关按钮 -->
				</li>
				<li>
					<!-- BEGIN 响应快速搜索表单 -->
					<form class="sidebar-search">
						<div class="input-box">
							<a href="javascript:;" class="remove"></a>
							<input type="text" placeholder="Search...." />
							<input type="button" class="submit" value=" " />
						</div>
					</form>
					<!-- END 响应快速搜索表单 -->
				</li>
				<li class="active ">
					<a href="index.html">
					<i class="icon-home"></i> 
					<span class="title">我的桌面</span>
					</a>
				</li>
				<li class="">
					<a class="active" href="javascript:;">
					<i class="icon-sitemap"></i> 
					<span class="title">个人办公</span>
					<span class="arrow "></span>
					</a>
					<ul class="sub-menu">
						<li>
							<a href="javascript:;"><i class="icon-user"></i>个人工作 <span class="arrow"></span></a>
							<ul class="sub-menu">
								<li><a href="my_note.jsp"><i class="icon-external-link"></i>我的便签</a></li>
								<li><a href="p_personpages/c_works/my_schedule.jsp"><i class="icon-calendar"></i>我的日程</a></li>
							</ul>
						</li>
						<li>
							<a href="javascript:;">
							<i class="icon-youtube-sign"></i>
							信息中心
							<span class="arrow"></span>
							</a>
							<ul class="sub-menu">
								<li><a href="p_personpages/c_info/news_read.jsp"><i class="icon-bolt"></i>新闻阅览</a></li>
								<li><a href="p_personpages/c_info/notice_read.jsp"><i class="icon-volume-up"></i>公告查看</a></li>
								<li><a href="p_personpages/c_info/notice_read.jsp"><i class="icon-group"></i>聊天室</a></li>
							</ul>
						</li>
						<li>
							<a href="javascript:;">
							<i class="icon-envelope-alt"></i>
							邮箱
							<span class="arrow"></span>
							</a>
							<ul class="sub-menu">
								<li><a href="p_personpages/c_info/news_read.jsp"><i class="icon-edit"></i>写邮件</a></li>
								<li><a href="p_personpages/c_info/news_read.jsp"><i class="icon-circle-arrow-down"></i>收件箱</a></li>
								<li><a href="p_personpages/c_info/notice_read.jsp"><i class=" icon-circle-arrow-up"></i>已发送</a></li>
								<li><a href="p_personpages/c_info/notice_read.jsp"><i class="icon-trash"></i>已删除</a></li>
							</ul>
						</li>
					</ul>
				</li>
				<li class="">
					<a href="javascript:;">
					<i class="icon-group"></i>
					<span class="title">CRM客户管理</span>
					<span class="selected"></span>
					<span class="arrow open"></span>
					</a>
					<ul class="sub-menu">
						<li >
							<a href="javascript:;"><i class=" icon-male"></i>客户管理
							<span class="arrow"></span></a>
							<ul class="sub-menu">
								<li><a href="p_crmpages/mana_cus/list_cus.jsp"><i class="  icon-stackexchange"></i>客户列表</a></li>

								<li><a href="p_crmpages/mana_cus/mana_contact.jsp"><i class="icon-book"></i>联系人管理</a></li>

								<li><a href="p_crmpages/mana_cus/mana_follow.jsp"><i class="  icon-foursquare"></i>跟进管理</a></li>

							</ul>
						</li>

						<li >

							<a href="javascript:;"><i class="icon-book"></i>合同订单
							<span class="arrow"></span></a>
							<ul class="sub-menu">
							
								<li><a href="p_crmpages/mana_pact_order/mana_order.jsp"><i class="icon-folder-close"></i>订单管理</a></li>

								<li><a href="p_crmpages/mana_pact_order/mana_pact.jsp"><i class=" icon-print"></i>合同管理</a></li>

							</ul>

						</li>

						<li >

							<a href="javascript:;"><i class="icon-jpy"></i>财务管理
							<span class="arrow"></span></a>
							<ul class="sub-menu">
							
								<li><a href="p_crmpages/mana_financial/mana_receivables.jsp"><i class="icon-signin"></i>收款管理</a></li>

								<li><a href="p_crmpages/mana_financial/mana_water.jsp"><i class=" icon-fire"></i>收款流水</a></li>
								
								<li><a href="p_crmpages/mana_financial/mana_invoice.jsp"><i class=" icon-barcode"></i>开票管理</a></li>
								
								<li><a href="p_crmpages/mana_financial/list_outvoice.jsp"><i class="icon-tasks"></i>发票列表</a></li>
								
								<li><a href="p_crmpages/mana_financial/mana_should_not.jsp"><i class=" icon-resize-horizontal"></i>应收与未收</a></li>
							</ul>

						</li>
						
						
						<li >

							<a href="javascript:;"><i class="icon-table"></i>产品管理
							<span class="arrow"></span></a>
							<ul class="sub-menu">
							
								<li><a href="p_crmpages/mana_product/type_product.jsp"><i class="icon-gittip"></i>产品类别</a></li>

								<li><a href="p_crmpages/mana_product/list_product.jsp"><i class="icon-list"></i>产品列表</a></li>

							</ul>

						</li>
						
					</ul>

				</li>


				<li class="">

					<a  href="javascript:;">

					<i class="icon-table"></i> 

					<span class="title">人事管理</span>

					<span class="arrow"></span>

					</a>

					<ul class="sub-menu">

						<li >

							<a href="p_hrpages/mana_position.jsp">
							<i class="icon-flickr"></i> 
							组织架构</a>

						</li>

						<li >

							<a href="form_samples.html">
							<i class="icon-hospital"></i>
							职务管理</a>

						</li>

						<li >

							<a href="p_hrpages/mana_post.jsp">
							<i class="icon-indent-right"></i>
							岗位管理</a>

						</li>

						<li >

							<a href="p_hrpages/mana_employee.jsp">
							<i class="icon-group"></i>
							员工管理</a>

						</li>

					</ul>

				</li>

				<li class="">

					<a href="javascript:;">

					<i class="icon-wrench"></i> 

					<span class="title">实用工具</span>

					<span class="arrow "></span>

					</a>

					<ul class="sub-menu">

						<li >

							<a href="javascript:;"><i class="icon-trash"></i>CRM回收站
							<span class="arrow"></span></a>
							
							<ul class="sub-menu">
							
								<li><a href="p_toolspages/crm_recovery/rec_cus.jsp" ><i class="icon-trash"></i>客户回收</a></li>
			                    <li><a href="p_toolspages/crm_recovery/rec_contact.jsp" ><i class="icon-trash"></i>联系人回收</a></li>
			                    <li><a href="p_toolspages/crm_recovery/rec_follow.jsp" ><i class="icon-trash"></i>跟进回收</a>  </li>
			                    <li><a href="p_toolspages/crm_recovery/rec_order.jsp" ><i class="icon-trash"></i>订单回收</a>  </li>
			                    <li><a href="p_toolspages/crm_recovery/rec_pact.jsp" ><i class="icon-trash"></i>合同回收</a> </li>
			                    <li><a href="p_toolspages/crm_recovery/rec_receivables.jsp" ><i class="icon-trash"></i>收款单回收</a>  </li>
			                    <li><a href="p_toolspages/crm_recovery/rec_invoice.jsp" ><i class="icon-trash"></i>发票回收</a> </li>
			                    <li><a href="p_toolspages/crm_recovery/rec_producttype.jsp" ><i class="icon-trash"></i>产品类别回收</a></li>
			                    <li><a href="p_toolspages/crm_recovery/rec_product.jsp" ><i class="icon-trash"></i>产品回收</a></li>
								

							</ul>

						</li>

						<li >

							<a href="javascript:;"><i class="icon-trash"></i>人事管理回收站
							<span class="arrow"></span></a>
							
							<ul class="sub-menu">
							
								<li><a href="p_toolspages/hr_recovery/rec_ori_frame.jsp"><i class="icon-trash"></i>组织架构回收</a></li>
			                    <li><a href="p_toolspages/hr_recovery/rec_position.jsp"><i class="icon-trash"></i>职务回收</a></li>
			                    <li><a href="p_toolspages/hr_recovery/rec_post.jsp" ><i class="icon-trash"></i>岗位回收</a>  </li>
			                    <li><a href="p_toolspages/hr_recovery/rec_employee.jsp" ><i class="icon-trash"></i>员工回收</a>  </li>
							
							</ul>

						</li>

					</ul>

				</li>

				<li class="">

					<a class="active" href="javascript:;">

					<i class="icon-sitemap"></i> 

					<span class="title">报表分析</span>

					<span class="arrow "></span>

					</a>

					<ul class="sub-menu">

						<li>

							<a href="javascript:;">
							<i class="icon-paste"></i> 
							数据年报

							<span class="arrow"></span>

							</a>

							<ul class="sub-menu">

								<li><a href="p_tablepages/year_data_report/yearport_cus.jsp"><i class="icon-indent-left"></i>客户统计年报</a></li>

								<li><a href="p_tablepages/year_data_report/yearport_follow.jsp"><i class=" icon-indent-right"></i>跟进统计年报</a></li>

							</ul>

						</li>

						<li>

							<a href="javascript:;">
							<i class="icon-th-large"></i>
							同比与环比

							<span class="arrow"></span>

							</a>

							<ul class="sub-menu">

								<li><a href="p_tablepages/year_on_year _and_chain/cus_new.jsp" ><i class="icon-share"></i>【客户】新增</a>  </li>
								<li><a href="p_tablepages/year_on_year _and_chain/cus_type.jsp" ><i class="icon-road"></i>【客户】类型</a></li>
								<li><a href="p_tablepages/year_on_year _and_chain/cus_level.jsp" ><i class="icon-reorder"></i>【客户】级别</a>  </li>
								<li><a href="p_tablepages/year_on_year _and_chain/cus_from.jsp" ><i class=" icon-star-half"></i>【客户】来源</a> </li>
								<li><a href="p_tablepages/year_on_year _and_chain/cus_follow.jsp" ><i class="icon-sitemap"></i>【客户】跟进</a>  </li>
								<li><a href="p_tablepages/year_on_year _and_chain/emp_cus_new.jsp" ><i class=" icon-plus"></i>【员工】客户新增</a> </li>
								<li><a href="p_tablepages/year_on_year _and_chain/emp_cus_follow.jsp"><i class=" icon-refresh"></i>【员工】客户跟进</a> </li>
								<li><a href="p_tablepages/year_on_year _and_chain/emp_cus_scucce.jsp"><i class="icon-heart"></i>【员工】客户成交</a></li> 


							</ul>

						</li>
						
						<li>

							<a href="javascript:;">
 							<i class="icon-group"></i>
							员工分析

							<span class="arrow"></span>

							</a>

							<ul class="sub-menu">

								<li><a href="p_tablepages/emp_analysis/emp_cus_newreport.jsp"><i class=" icon-align-justify"></i>【员工】客户新增统计</a></li>
								<li><a href="p_tablepages/emp_analysis/emp_cus_followreport.jsp"><i class=" icon-align-justify"></i>【员工】客户跟进统计</a></li>
								<li><a href="p_tablepages/emp_analysis/emp_cus_succereport.jsp" ><i class=" icon-align-justify"></i>【员工】客户成交统计</a> </li>
							</ul>

						</li>
						
					</ul>

				</li>


				<li class="last">

					<a href="javascript:;">

					<i class="icon-map-marker"></i> 

					<span class="title">系统管理</span>

					<span class="arrow "></span>

					</a>

					<ul class="sub-menu">

						<li >

							<a href="p_syspages/grant_role.jsp">
							<i class="icon-cog"></i>
							角色授权</a>

						</li>

						<li >

							<a href="p_syspages/log_mana.jsp">
							<i class="icon-hdd"></i>
							日志管理</a>

						</li>
						
						<li >

							<a href="p_syspages/pramater_mana.jsp">
							<i class=" icon-tags"></i>
							参数配置</a>

						</li>
						
						<li >

							<a href="p_syspages/city_mana.jsp">
							<i class="icon-signal"></i>
							城市管理</a>

						</li>
					</ul>

				</li>

			</ul>

			<!-- END 结束工具条菜单 -->

		</div>

		<!-- END 结束侧边栏 -->
