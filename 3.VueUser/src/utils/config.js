const config = {
    get() {
        return {
            url : process.env.VUE_APP_BASE_API_URL + process.env.VUE_APP_BASE_API + '/',
            name: process.env.VUE_APP_BASE_API,
			menuList:[
				{
					name: '新闻资讯管理',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'茶叶资讯',
							url:'/index/newsList'
						},
					]
				},
				{
					name: '活动信息管理',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'活动信息',
							url:'/index/huodongxinxiList'
						},
					]
				},
				{
					name: '茶叶信息管理',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'茶叶信息',
							url:'/index/chayexinxiList'
						},
					]
				},
				{
					name: '茶馆信息管理',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'茶馆信息',
							url:'/index/chaguanxinxiList'
						},
					]
				},
				{
					name: '茶史信息管理',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'茶史信息',
							url:'/index/chashixinxiList'
						},
					]
				},
			]
        }
    },
    getProjectName(){
        return {
            projectName: "spingboot茶文化推广系统"
        } 
    }
}
export default config
