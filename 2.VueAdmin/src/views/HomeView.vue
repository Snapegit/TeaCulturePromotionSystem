<template>
	<div class="home_view">
		<div class="projectTitle">欢迎使用 {{projectName}}</div>
		<div class="count_list">
			<el-collapse-transition v-if="btnAuth('huodongxinxi','首页总数')">
				<el-card v-show="countTypeList.closehuodongxinxiCountType" class="card_view">
					<template #header>
						<div class="index_card_head">
							<div class="card_head_title">
								活动信息
							</div>
							<div class="card_head_right">
								<el-icon @click="countTypeClick('hiddenhuodongxinxiCountType')" class="showIcons"
									:class="countTypeList.hiddenhuodongxinxiCountType?'showIcons1':''">
									<ArrowUpBold />
								</el-icon>
								<el-icon @click="countTypeClick('closehuodongxinxiCountType')" class="closeIcons">
									<CloseBold />
								</el-icon>
							</div>
							
						</div>
					</template>
					<el-collapse-transition>
						<div class="count_item" v-show="countTypeList.hiddenhuodongxinxiCountType">
							<div class="count_title">活动信息总数</div>
							<div class="count_num">{{huodongxinxiCount}}</div>
						</div>
					</el-collapse-transition>
				</el-card>
			</el-collapse-transition>
			<el-collapse-transition v-if="btnAuth('chaweiyuyue','首页总数')">
				<el-card v-show="countTypeList.closechaweiyuyueCountType" class="card_view">
					<template #header>
						<div class="index_card_head">
							<div class="card_head_title">
								茶位预约
							</div>
							<div class="card_head_right">
								<el-icon @click="countTypeClick('hiddenchaweiyuyueCountType')" class="showIcons"
									:class="countTypeList.hiddenchaweiyuyueCountType?'showIcons1':''">
									<ArrowUpBold />
								</el-icon>
								<el-icon @click="countTypeClick('closechaweiyuyueCountType')" class="closeIcons">
									<CloseBold />
								</el-icon>
							</div>
							
						</div>
					</template>
					<el-collapse-transition>
						<div class="count_item" v-show="countTypeList.hiddenchaweiyuyueCountType">
							<div class="count_title">茶位预约总数</div>
							<div class="count_num">{{chaweiyuyueCount}}</div>
						</div>
					</el-collapse-transition>
				</el-card>
			</el-collapse-transition>
		</div>
		<div class="card_list">
			<el-collapse-transition v-if="btnAuth('huodongxinxi','首页统计')">
				<el-card v-show="cardTypeList.closehuodongxinxiChartType1" class="card_view">
					<template #header>
						<div class="index_card_head">
							<div class="card_head_title">
								活动信息
							</div>
							<div class="card_head_right">
								<el-icon @click="cardTypeClick('hiddenhuodongxinxiChartType1')" class="showIcons"
									:class="cardTypeList.hiddenhuodongxinxiChartType1?'showIcons1':''">
									<ArrowUpBold />
								</el-icon>
								<el-icon @click="cardTypeClick('closehuodongxinxiChartType1')" class="closeIcons">
									<CloseBold />
								</el-icon>
							</div>
						</div>
					</template>
					<el-collapse-transition>
						<div class="card_item" v-show="cardTypeList.hiddenhuodongxinxiChartType1">
							<div id="huodongxinxihuodongleixingEchart1" style="width: 100%;height: 400px;"></div>
						</div>
					</el-collapse-transition>
				</el-card>
			</el-collapse-transition>
			<el-collapse-transition v-if="btnAuth('chaweiyuyue','首页统计')">
				<el-card v-show="cardTypeList.closechaweiyuyueChartType1" class="card_view">
					<template #header>
						<div class="index_card_head">
							<div class="card_head_title">
								茶位预约
							</div>
							<div class="card_head_right">
								<el-icon @click="cardTypeClick('hiddenchaweiyuyueChartType1')" class="showIcons"
									:class="cardTypeList.hiddenchaweiyuyueChartType1?'showIcons1':''">
									<ArrowUpBold />
								</el-icon>
								<el-icon @click="cardTypeClick('closechaweiyuyueChartType1')" class="closeIcons">
									<CloseBold />
								</el-icon>
							</div>
						</div>
					</template>
					<el-collapse-transition>
						<div class="card_item" v-show="cardTypeList.hiddenchaweiyuyueChartType1">
							<div id="chaweiyuyuejiageEchart1" style="width: 100%;height: 400px;"></div>
						</div>
					</el-collapse-transition>
				</el-card>
			</el-collapse-transition>
		</div>
	</div>
</template>

<script setup>
	import {
		inject,
		nextTick,
		ref,
		getCurrentInstance
	} from 'vue';
	const context = getCurrentInstance()?.appContext.config.globalProperties;
	const projectName = context.$project.projectName
	const countTypeList = ref({
	})
	const getCountList=()=>{
		countTypeList.value.closehuodongxinxiCountType = true
		countTypeList.value.hiddenhuodongxinxiCountType = true
		if(btnAuth('huodongxinxi','首页总数')){
			gethuodongxinxiCount()
		}
		countTypeList.value.closechaweiyuyueCountType = true
		countTypeList.value.hiddenchaweiyuyueCountType = true
		if(btnAuth('chaweiyuyue','首页总数')){
			getchaweiyuyueCount()
		}
	}
	const huodongxinxiCount = ref(0)
	const gethuodongxinxiCount = () => {
		context?.$http({
			url:'huodongxinxi/count',
			method: 'get'
		}).then(res=>{
			huodongxinxiCount.value = res.data.data
		})
	}
	const chaweiyuyueCount = ref(0)
	const getchaweiyuyueCount = () => {
		context?.$http({
			url:'chaweiyuyue/count',
			method: 'get'
		}).then(res=>{
			chaweiyuyueCount.value = res.data.data
		})
	}
	const countTypeClick = (e) => {
		countTypeList.value[e] = !countTypeList.value[e]
	}
	const init=()=>{
		getCountList()
		getCardList()
	}
	//权限验证
	const btnAuth = (e,a)=>{
		return context?.$toolUtil.isAuth(e,a)
	}
	let echarts = inject("echarts")
	const cardTypeClick = (e) =>{
		cardTypeList.value[e] = !cardTypeList.value[e]
		setTimeout(()=>{
			getCardList()
		},1000)
	}
	const cardTypeList = ref({
		closehuodongxinxiChartType1: true,
		hiddenhuodongxinxiChartType1: true,
		closechaweiyuyueChartType1: true,
		hiddenchaweiyuyueChartType1: true,
	})
	const getCardList = () => {
		if(btnAuth('huodongxinxi','首页统计')){
			gethuodongxinxiChart1()
		}
		if(btnAuth('chaweiyuyue','首页统计')){
			getchaweiyuyueChart1()
		}
	}
	const gethuodongxinxiChart1 = () => {
		nextTick(()=>{
			var huodongleixingEchart1 = echarts.init(document.getElementById("huodongxinxihuodongleixingEchart1"),'macarons');
			context?.$http({
				url: "huodongxinxi/group/huodongleixing",
				method: "get",
			}).then(obj=>{
				let res = obj.data.data
				let xAxis = [];
				let yAxis = [];
				let pArray = []
				for(let i=0;i<res.length;i++){
				    xAxis.push(res[i].huodongleixing);
				    yAxis.push(parseFloat((res[i].total)));
				    pArray.push({
				        value: parseFloat((res[i].total)),
				        name: res[i].huodongleixing
				    })
				}
				var option = {};
                option = {
                    title: {
                        text: '活动类型统计',
                        left: 'center'
                    },
                    legend: {
                        orient: 'vertical',
                        left: 'left'
                    },
                    tooltip: {
						trigger: 'item',
						formatter: '{b} : {c} ({d}%)'
                    },
                    series: [
                        {
                            type: 'pie',
                            radius: '55%',
                            center: ['50%', '60%'],
                            data: pArray,
                            emphasis: {
                                itemStyle: {
                                    shadowBlur: 10,
                                    shadowOffsetX: 0,
									shadowColor: 'rgba(0, 0, 0, 0.5)'
                                }
                            }
                        }
                    ]
                };
				huodongleixingEchart1.clear()
				// 使用刚指定的配置项和数据显示图表。
				huodongleixingEchart1.setOption(option);
				//根据窗口的大小变动图表
				huodongleixingEchart1.resize();
			})
		})
	}
	const getchaweiyuyueChart1 = () => {
		nextTick(()=>{
			var jiageEchart1 = echarts.init(document.getElementById("chaweiyuyuejiageEchart1"),'macarons');
			context?.$http({
				url: `chaweiyuyue/value/yuyueshijian/jiage/日`,
				method: "get",
			}).then(obj=>{
				let res = obj.data.data
				let xAxis = [];
				let yAxis = [];
				let pArray = []
				for(let i=0;i<res.length;i++){
				    xAxis.push(res[i].yuyueshijian);
				    yAxis.push(parseFloat((res[i].total)));
				    pArray.push({
				        value: parseFloat((res[i].total)),
				        name: res[i].yuyueshijian
				    })
				}
				var option = {};
                option = {
                    title: {
                        text: '销售统计',
                        left: 'center'
                    },
                    tooltip: {
                      trigger: 'item',
                      formatter: '{b} : {c}'
                    },
                    xAxis: {
                        type: 'category',
                        data: xAxis,
                        axisLabel: {
                            rotate: 40
                        }
                    },
                    yAxis: {
                        type: 'value'
                    },
                    series: [{
                        data: yAxis,
                        type: 'bar'
                    }]
                };
				jiageEchart1.clear()
				// 使用刚指定的配置项和数据显示图表。
				jiageEchart1.setOption(option);
				//根据窗口的大小变动图表
				jiageEchart1.resize();
			})
		})
	}
	init()
</script>
<style lang="scss">
	.projectTitle{
		padding: 20px 0;
		font-weight: bold;
		display: flex;
		width: 100%;
		font-size: 30px;
		justify-content: center;
		align-items: center;
		height: 50%;
	}

	.showIcons {
		transition: transform 0.3s;
		margin-right: 10px;
	}

	.showIcons1 {
		transform: rotate(-180deg);
	}
	
	// 总数盒子
	.count_list{
		padding: 0 0 20px;
		display: flex;
		width: 100%;
		justify-content: center;
		align-items: flex-start;
		flex-wrap: wrap;
		// 总数card
		.card_view {
			border: 0px solid #e4e7ed;
			border-radius: 10px;
			box-shadow: none;
			margin: 0 10px 10px;
			flex: 1;
			background: linear-gradient(90deg, #E3EDF9 0%, #D9E6F7 100%);
			width: 100%;
			position: relative;
			box-sizing: border-box;
			height: auto;
			// card头部
			.el-card__header {
				border: 1px solid #e4e7ed;
				padding: 7px 20px;
				left: 0;
				background: #62B8FF;
				bottom: 0;
				width: 100%;
				border-width: 0;
				position: absolute;
				// 头部盒子
				.index_card_head {
					display: flex;
					width: 100%;
					justify-content: space-between;
					align-items: center;
					// 标题
					.card_head_title {
						color: #868686;
						font-weight: bold;
						font-size: 14px;
					}
					// 按钮盒子
					.card_head_right {
						display: flex;
						align-items: center;
						// 按钮
						.el-icon {
							cursor: pointer;
							color: #868686;
							font-weight: bold;
							font-size: 12px;
						}
					}
				}
			}
			// body
			.el-card__body {
				padding: 0;
				// body盒子
				.count_item{
					padding: 30px 20px 60px;
					flex-direction: column-reverse;
					display: flex;
					// 总数标题
					.count_title{
						color: #3753A2;
						font-weight: bold;
						font-size: 16px;
						line-height: 1;
						order: 1;
					}
					// 总数数字
					.count_num{
						color: #3753A2;
						font-weight: bold;
						font-size: 50px;
						line-height: 1.5;
						order: 2;
					}
				}
			}
		}
	}
	// 首页盒子
	.home_view {
		padding: 20px;
		background: url(http://clfile.zggen.cn/20240203/09a98f4852104a599055d47953ef0a23.png) no-repeat center top / 100% 100% !important;
		width: 100%;
		min-height: 100vh;
		height: auto;
	}
	// 统计图盒子
	.card_list {
		padding: 0 0 20px;
		display: flex;
		width: 100%;
		justify-content: center;
		align-items: flex-start;
		flex-wrap: wrap;
		// 统计图card
		.card_view {
			border: 0px solid #e4e7ed;
			border-radius: 10px;
			box-shadow: none;
			margin: 0 10px 10px;
			flex: 1;
			background: linear-gradient(90deg, #E3EDF9 0%, #D9E6F7 100%);
			width: 100%;
			position: relative;
			box-sizing: border-box;
			height: auto;
			// 头部
			.el-card__header {
				border: 0px solid #e4e7ed;
				padding: 7px 20px;
				left: 0;
				bottom: 0;
				background: #62B8FF;
				width: 100%;
				border-width: 0;
				position: absolute;
				// 头部盒子
				.index_card_head {
					display: flex;
					width: 100%;
					justify-content: space-between;
					align-items: center;
					// 标题
					.card_head_title {
						color: #868686;
						font-weight: bold;
						font-size: 14px;
					}
					// 按钮盒子
					.card_head_right {
						display: flex;
						align-items: center;
						// 按钮
						.el-icon{
							cursor: pointer;
							color: #868686;
							font-weight: bold;
							font-size: 12px;
						}
					}
				}
			}
			// body
			.el-card__body {
				padding: 0;
				// body盒子
				.card_item{
					padding: 30px;
					text-align: center;
				}
			}
		}
	}
</style>
