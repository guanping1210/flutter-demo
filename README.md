#### countapp 一个简单的计数器实战

####

#### 组件概览

#### 基本 widgets: 可以是UI组件、控件、或者功能性组件
- widget 是UI元素的一个配置数据，一个widget可以对应多个Element
- 真正的UI是由Element构成的，但是Element是通过widget生成的

1、Container 类似于 div，可以调整定位、布局、大小
2、Row 水平方向排列子 widget 的列表
3、Column 垂直方向上排列子 widget 的列表
4、Image 显示图片

- asset 加载本地图片，但是需要先在 yaml 文件中先加载
- network 加载网络图片
  5、Text 单一格式的文本
  6、Icon material 风格的 icon 图标
  7、RaisedButton material 风格的 button，凸起材质的安宁
  8、Scaffold material 风格布局结构的基本实现
- appBar 顶部导航内容
- body 内容区域
- bottomNavigatorBar 底部导航
- floatingActionButton 浮动导航

9、Appbar 应用程序栏
10、FlutterLogo 自定义 logo，以 widget 形式展示出来
11、Placeholder 一个盒子模式的 widget，代表日后会有 widget 会添加进来

Expanded
FittedBox

#### material 风格的 widget

1、Scaffold 包含 app 基础结构和导航
2、Appbar 应用程序工具栏
3、BottomNavigatorBar 底部导航条，能够实现 tap 切换页面
4、TabBar 水平选项卡
5、TabBarView 显示与选项卡对应的页面视图
6、MaterialApp 集成 widget，封装了应用程序的基础 widget
7、WidgetsApp 工具类，封装类应用程序通常需要的一些 widget
8、Drawer 从 Scaffold 边缘水平滑动以显示侧边面板
9、RaisedButton 凸起的按钮
10、FloatingActionButton 圆形按钮，悬浮在内容上面
11、FlatButton 扁平按钮
12、IconButton 图形按钮，点击会有水波动画
13、PopupMenuButton 弹出式菜单列表
14、ButtonBar 水平排列的按钮组
15、TextField 文本输入框
16、Checkbox 复选框
17、Radio 单选框
18、Switch 状态切换按钮
19、Slider 滑块，允许用户手动控制滑动
20、Date & Time Pickers 日期&时间选择器
21、SimpleDialog 简单对话框
22、AlertDialog 用户确认对话框
23、BottomSheet 从底部滑起的列表
24、ExpansionPanel 手风琴样式的折叠面板
25、SnackBar 底部消息提示，比较轻量
26、Chip 标签，可以将一个复杂内容展示到一个小块中
27、Tooltip 文本提示工具
28、DataTable 数据表单
29、Card 拥有圆角和阴影的卡片
30、LinearProgressIndicator 线性进度条
31、ListTile 行列表，固定高度，一般包含文本、图标
32、Stepper 步骤指示器
33、Divider 1px 的水平分割线
34、MaterialPageRoute 表示会新打开一个页面，加载新的内容，有动画效果

#### 布局：拥有单个子 widegt 的容器

1、Container 单个元素布局，类似于 div box
2、Padding 会给子 widget 添加指定的 padding 边距
3、Center 将子 widget 居中显示在自身内部
4、Align 内部子 widget 对齐
5、FittedBox 按自身的大小调整子 widget 的大小和位置
6、AspectRatio 能够固定子 widget 的大小，为特定的长宽比
7、ConstrainedBox 能够约束子 widget
8、Baseline 根据子 widget 的基线进行定位
9、FractionallySizedBox 可把子项放在可用空间
10、IntrinsicHeight 调整子项高度为自身高度
11、IntrinsicWidth 调整子项宽度为自身宽度
12、LimitedBox 自身不受限制的盒子
13、Offstage 可以控制子 widget 的显示与隐藏
14、OverflowBox 对子项不加约束，允许子项溢出父级
15、SizedBox 能够指定宽高的盒子，如果不适应，能够自动调整
16、SizedOverflowBox 特定大小的盒子模型，可能溢出
17、Transform 绘制子 widget 之前应用转换的 widget
18、CustomSingleCHildLayout 自定义的拥有单个 widget 的布局容器

#### 布局： 拥有多个子元素的布局 widget

1、Row 水平排列子 widget
2、Column 垂直方向上排列子 widget
3、Stack 允许子 widget 简单的堆叠在一起
4、IndexedStack 从子 widget 列表中显示单个孩子的 stack
5、Flow 流式布局
6、Table 表格布局
7、Wrap 水平或垂直方向多行显示子 widget
8、ListBody 沿着一个给定的方向，顺序排列子元素
9、ListView 可滚动的列表控件

#### 表单

1、Input 输入 widget
2、Form 一个可选的，用于给多个 TextField 分组的 widget
3、FormField 独立的表单自动，能够维护表单字段的当前状态，可以更新和验证错误
4、RawKeyBoardListener 每当用户按下或释放键盘上的健时可以调用回调的 widget

#### 动画

1、AnimatedContainer 在一段时间内逐渐改变其值的容器
2、AnimatedCrossFade 两个子 widget 可以交叉淡入，同时还可以调整尺寸
3、Hero 将子项标记为 hero 动画的 widget
4、AnimatedBuilder 构建动画的通用小部件
5、DecoratedBoxTransition 根据属性不同，可以使用不同的动画
6、FadeTransition 透明度动画
7、PositionedTransition 位置移动动画
8、RotationTransition 旋转动画
9、ScaleTransiont 缩放动画
10、SizeTransition 尺寸变化动画
11、SlideTransition 相对于正常位置的某个位置使用动画
12、AnimatedDefaultTextStyle 文本样式切换时的动画
13、AnimationListState 动画列表的 state
14、AnimatedModalBarrier 阻止用户与 widget 交互的 widget
15、AnimatedOpacity 给定的透明度变化动画

#### 交互模型
1、LongPressDraggable 长按可拖动的widget
2、GestureDetector 检测收拾的widget
3、DragTarget 可以拖动的widget
4、Dismissible 拖动时可隐藏的widget
5、Navigator 导航器，可以在多个页面直接实现路由跳转
6、Scrollable 可滚动的widget的交互模型


#### state 生命周期： 联想到react的生命周期，会好理解一些
- initState 当widget第一次插入到widget树中时会调用，初始化state状态值， 只会调用一次
- dependOnInheriteWidgetOfExactType 获取最近父级的InheritFromWidget时调用，，因为可能会产生变化（一般在didChangeDependencies中调用）
- didChangeDependencies 当state对象的依赖发生变化时调用
- build 用于构建widget子树,在以下场景中被调用
  - initState 之后
  - didUpdateWidget 之后
  - setState 之后
  - didChangeDependencies 之后
  - 移除 state 之后
- reassemble 开发调试函数，在热加载时会用到
- didUpdateWidgt widget重建时调用
- deactivate 移除state对象时，会调用此函数
- dispose 永久移除state对象，释放资源


#### 在widget树中获取state对象
- 通过context获取， context.findAncestorStateOfType, 可以向上查找指定类型的statefulWidget对应的state对象


#### dart  一门语言

1、LongPressDraggable 长按可拖动的 widget
2、GestureDetector 检测收拾的 widget
3、DragTarget 可以拖动的 widget
4、Dismissible 拖动时可隐藏的 widget
5、Navigator 导航器，可以在多个页面直接实现路由跳转,提供了打开和退出路由页面的方法，是通过一个栈来进行管理的
6、Scrollable 可滚动的 widget 的交互模型


<!-- 
  面试问题：
  1、flex: 1，分别是哪三个属性的合成  flex-grow 放大比例 flex-shrink 缩小比例 flex-basis 剩余空间
  2、flex布局的原理是啥：容器上设置了flex布局之后，有横轴、中轴，然后可以设置子元素按照什么样的方向去排列、拉伸和排序；
      有flex属性，就会根据flex方向代替元素的宽和高，用剩余空间填充子元素尺寸，这就是典型的“根据外部容器决定内部尺寸”的思路
  3、flex与grid有什么区别？
    flex是弹性布局，沿着一条线铺下去，铺的方向可以自己定义；
    grid是网格布局，是把盒子用线分成很多份，然后把小盒子一个个填写进去；

  4、能不能说一下DNS查询地址的具体过程？
  5、为什么启用CDN能够起到加速的作用？
  6、浏览器是如何具体的将HTML内容解析为DOM树的？

  7、tree-shaking的原理是什么？
  8、说一下webpack、rollup、gulp、vite的对比呢？

  9、你对react的看法？
  10、你对react hooks的看法？
  11、对高阶函数怎么看，具体是如何使用的？
  12、对fiber架构怎么看？与以前的diff算法相比，有啥优势？
  13、对webpack 的 loader 和 plugin的看法？

  14、有说负责项目搭建的工作，这个项目搭建是怎么搭建的，内部脚手架还是自己从0开始配置一个工程？

  15、大文件上传，具体是如何上传的？有没有用断点续传 http2.0的关键字Range可以实现断点续传
      分片上传 -> 读取文件用的啥API呢？FileReader 

  16、像Granfana，Sentry这种可视化埋点工具哈，大致的原理是啥？
  17、多主题样式包是怎么设计的？
  18、具体使用qiankun的感受是什么？有没有碰到什么坑啊之类的？具体是怎么解决的？
  19、大量数据页面流畅展示哈，数据量是多大，具体是用什么方式实现流畅展示的呢？
  20、19年用的二进制流分片上传，20年也有大文件上传，都是用的这个吗？有没有尝试过http的断点续传
  21、可拖拽组件编辑画布，是怎么实现的？用的插件还是自己写的一套拖拽逻辑？
  22、文件分片上传：不用等到三个分片上传完毕，而是改为一个分片上传完之后，如何追加一个分片上去。让队列中始终保持有三个分片
  23、遇到过哪些web端和移动端的适配问题，能详细说一下吗？

  24、VUE响应式数据的原理是什么？ VUE2.0采用的Object.defineProperty， 3.0采用的Proxy和Reflect
  25、VUE组件是如何通信的，就是父子组件、跨组件、兄弟组件是如何通信的？
  26、redux是个单独的库，并不只应用于react，那么这二者之间是如何关联起来呢？
  27、vue中的diff算法是计算的呢？和react的diff算法，有哪些区别？
  28、谈谈你对vue中 keep-alive的理解？如果react也要实现一套这样的逻辑，具体可以怎么实现呢？
  29、微信静默登录和非静默登录有什么区别

  30、平常团队直接有没有相互代码codeview，具体view 的点是哪些呢？
  31、restful规范，能说一下你的理解吗？
  32、现在混合开发、前端的移动开发，都离不开JSBridge,他是用来沟通原生和web的嘛，具体JSBridge的原理，有没有了解过呢？


  33、Node.js 中的 Event Emitter 是怎么理解的
  34、NodeJS中事件循环是什么，如何工作？和 JS 中的事件循环有什么区别呢？

  38、有没有编写过node命令，CLI这些？
  39、代码规范，eslint，这些？
 -->

 ### 使用Material风格的其他小组件，必须包裹在Scaffold内部，否则会报错

 ## 本地资源，存放的根目录，是和 lib 同等级的目录，assets 才能有效
