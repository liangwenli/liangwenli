// 配置参数
require.config({
    //baseUrl 选填的，不写就是默认以requirejs所在文件夹为基础路径
    paths: { //配置短路径：不再基础路径下的文件引入，最好配置短路径
        'jquery': '../lib/jquery-1.10.1.min',
        'lunbotu': '../lib/swiper.min',
    },
    shim: { //依赖关系的设置
        'index': ['lunbotu', 'jquery'], //index需要依赖：'jquery', 'swiper', 三个模块(包==js文件)

    }
});

// 加载模块：不会帮你处理顺序的
require(['index', 'jquery', 'lunbotu'], function () {
    //如果上面的子模块都加载完成，就会触发这里的功能
    console.log('加载完毕');

});