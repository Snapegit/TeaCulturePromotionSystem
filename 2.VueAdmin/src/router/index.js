	import {
		createRouter,
		createWebHashHistory
	} from 'vue-router'
	import news from '@/views/news/list'
	import aboutus from '@/views/aboutus/list'
	import chaguanxinxi from '@/views/chaguanxinxi/list'
	import huodongxinxi from '@/views/huodongxinxi/list'
	import discusschayexinxi from '@/views/discusschayexinxi/list'
	import chashixinxi from '@/views/chashixinxi/list'
	import storeup from '@/views/storeup/list'
	import chaweiyuyue from '@/views/chaweiyuyue/list'
	import shangjia from '@/views/shangjia/list'
	import canjiahuodong from '@/views/canjiahuodong/list'
	import yonghu from '@/views/yonghu/list'
	import chayexinxi from '@/views/chayexinxi/list'
	import config from '@/views/config/list'
	import huodongleixing from '@/views/huodongleixing/list'
	import shangjiaRegister from '@/views/shangjia/register'
	import shangjiaCenter from '@/views/shangjia/center'

export const routes = [{
		path: '/login',
		name: 'login',
		component: () => import('../views/login.vue')
	},{
		path: '/',
		name: '首页',
		component: () => import('../views/index'),
		children: [{
			path: '/',
			name: '首页Home',
			component: () => import('../views/HomeView.vue'),
			meta: {
				affix: true
			}
		}, {
			path: '/updatepassword',
			name: '修改密码',
			component: () => import('../views/updatepassword.vue')
		}
		
		,{
			path: '/shangjiaCenter',
			name: '商家个人中心',
			component: shangjiaCenter
		}
		,{
			path: '/news',
			name: '茶叶资讯',
			component: news
		}
		,{
			path: '/aboutus',
			name: '发展历程',
			component: aboutus
		}
		,{
			path: '/chaguanxinxi',
			name: '茶馆信息',
			component: chaguanxinxi
		}
		,{
			path: '/huodongxinxi',
			name: '活动信息',
			component: huodongxinxi
		}
		,{
			path: '/discusschayexinxi',
			name: '茶叶信息评论',
			component: discusschayexinxi
		}
		,{
			path: '/chashixinxi',
			name: '茶史信息',
			component: chashixinxi
		}
		,{
			path: '/storeup',
			name: '我的收藏',
			component: storeup
		}
		,{
			path: '/chaweiyuyue',
			name: '茶位预约',
			component: chaweiyuyue
		}
		,{
			path: '/shangjia',
			name: '商家',
			component: shangjia
		}
		,{
			path: '/canjiahuodong',
			name: '参加活动',
			component: canjiahuodong
		}
		,{
			path: '/yonghu',
			name: '用户',
			component: yonghu
		}
		,{
			path: '/chayexinxi',
			name: '茶叶信息',
			component: chayexinxi
		}
		,{
			path: '/config',
			name: '轮播图',
			component: config
		}
		,{
			path: '/huodongleixing',
			name: '活动类型',
			component: huodongleixing
		}
		]
	},
	{
		path: '/shangjiaRegister',
		name: '商家注册',
		component: shangjiaRegister
	},
]

const router = createRouter({
	history: createWebHashHistory(process.env.BASE_URL),
	routes
})

export default router
