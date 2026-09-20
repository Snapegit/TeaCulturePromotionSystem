import { createRouter, createWebHashHistory } from 'vue-router'
import index from '../views'
import home from '../views/pages/home.vue'
import login from '../views/pages/login.vue'
import newsList from '@/views/pages/news/list'
import yonghuList from '@/views/pages/yonghu/list'
import yonghuDetail from '@/views/pages/yonghu/formModel'
import yonghuAdd from '@/views/pages/yonghu/formAdd'
import yonghuRegister from '@/views/pages/yonghu/register'
import yonghuCenter from '@/views/pages/yonghu/center'
import shangjiaList from '@/views/pages/shangjia/list'
import shangjiaDetail from '@/views/pages/shangjia/formModel'
import shangjiaAdd from '@/views/pages/shangjia/formAdd'
import chayexinxiList from '@/views/pages/chayexinxi/list'
import chayexinxiDetail from '@/views/pages/chayexinxi/formModel'
import chayexinxiAdd from '@/views/pages/chayexinxi/formAdd'
import storeupList from '@/views/pages/storeup/list'
import chashixinxiList from '@/views/pages/chashixinxi/list'
import chashixinxiDetail from '@/views/pages/chashixinxi/formModel'
import chashixinxiAdd from '@/views/pages/chashixinxi/formAdd'
import huodongleixingList from '@/views/pages/huodongleixing/list'
import huodongleixingDetail from '@/views/pages/huodongleixing/formModel'
import huodongleixingAdd from '@/views/pages/huodongleixing/formAdd'
import huodongxinxiList from '@/views/pages/huodongxinxi/list'
import huodongxinxiDetail from '@/views/pages/huodongxinxi/formModel'
import huodongxinxiAdd from '@/views/pages/huodongxinxi/formAdd'
import canjiahuodongList from '@/views/pages/canjiahuodong/list'
import canjiahuodongDetail from '@/views/pages/canjiahuodong/formModel'
import canjiahuodongAdd from '@/views/pages/canjiahuodong/formAdd'
import chaguanxinxiList from '@/views/pages/chaguanxinxi/list'
import chaguanxinxiDetail from '@/views/pages/chaguanxinxi/formModel'
import chaguanxinxiAdd from '@/views/pages/chaguanxinxi/formAdd'
import chaweiyuyueList from '@/views/pages/chaweiyuyue/list'
import chaweiyuyueDetail from '@/views/pages/chaweiyuyue/formModel'
import chaweiyuyueAdd from '@/views/pages/chaweiyuyue/formAdd'
import aboutusList from '@/views/pages/aboutus/list'
import aboutusDetail from '@/views/pages/aboutus/formModel'
import aboutusAdd from '@/views/pages/aboutus/formAdd'

const routes = [{
		path: '/',
		redirect: '/index/home'
	},
	{
		path: '/index',
		component: index,
		children: [{
			path: 'home',
			component: home
		}
		, {
			path: 'newsList',
			component: newsList
		}
		, {
			path: 'yonghuList',
			component: yonghuList
		}, {
			path: 'yonghuDetail',
			component: yonghuDetail
		}, {
			path: 'yonghuAdd',
			component: yonghuAdd
		}
		, {
			path: 'yonghuCenter',
			component: yonghuCenter
		}
		, {
			path: 'shangjiaList',
			component: shangjiaList
		}, {
			path: 'shangjiaDetail',
			component: shangjiaDetail
		}, {
			path: 'shangjiaAdd',
			component: shangjiaAdd
		}
		, {
			path: 'chayexinxiList',
			component: chayexinxiList
		}, {
			path: 'chayexinxiDetail',
			component: chayexinxiDetail
		}, {
			path: 'chayexinxiAdd',
			component: chayexinxiAdd
		}
		, {
			path: 'storeupList',
			component: storeupList
		}
		, {
			path: 'chashixinxiList',
			component: chashixinxiList
		}, {
			path: 'chashixinxiDetail',
			component: chashixinxiDetail
		}, {
			path: 'chashixinxiAdd',
			component: chashixinxiAdd
		}
		, {
			path: 'huodongleixingList',
			component: huodongleixingList
		}, {
			path: 'huodongleixingDetail',
			component: huodongleixingDetail
		}, {
			path: 'huodongleixingAdd',
			component: huodongleixingAdd
		}
		, {
			path: 'huodongxinxiList',
			component: huodongxinxiList
		}, {
			path: 'huodongxinxiDetail',
			component: huodongxinxiDetail
		}, {
			path: 'huodongxinxiAdd',
			component: huodongxinxiAdd
		}
		, {
			path: 'canjiahuodongList',
			component: canjiahuodongList
		}, {
			path: 'canjiahuodongDetail',
			component: canjiahuodongDetail
		}, {
			path: 'canjiahuodongAdd',
			component: canjiahuodongAdd
		}
		, {
			path: 'chaguanxinxiList',
			component: chaguanxinxiList
		}, {
			path: 'chaguanxinxiDetail',
			component: chaguanxinxiDetail
		}, {
			path: 'chaguanxinxiAdd',
			component: chaguanxinxiAdd
		}
		, {
			path: 'chaweiyuyueList',
			component: chaweiyuyueList
		}, {
			path: 'chaweiyuyueDetail',
			component: chaweiyuyueDetail
		}, {
			path: 'chaweiyuyueAdd',
			component: chaweiyuyueAdd
		}
		, {
			path: 'aboutusList',
			component: aboutusList
		}, {
			path: 'aboutusDetail',
			component: aboutusDetail
		}, {
			path: 'aboutusAdd',
			component: aboutusAdd
		}
		]
	},
	{
		path: '/login',
		component: login
	}
	,{
		path: '/yonghuRegister',
		component: yonghuRegister
	}
]

const router = createRouter({
  history: createWebHashHistory(process.env.BASE_URL),
  routes
})

export default router
