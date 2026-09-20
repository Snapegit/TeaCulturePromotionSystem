const config = {
    get() {
        return {
            url : process.env.VUE_APP_BASE_API_URL + process.env.VUE_APP_BASE_API + '/',
            name: process.env.VUE_APP_BASE_API,
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/cl3018432/client/index.html'
        }
    },
    getProjectName(){
        return {
            projectName: "spingboot茶文化推广系统"
        } 
    }
}
export default config
