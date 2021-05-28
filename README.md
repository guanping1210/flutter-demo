#### countapp 一个简单的计数器实战

####

#### 组件概览

#### 基本 widgets

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

1、LongPressDraggable 长按可拖动的 widget
2、GestureDetector 检测收拾的 widget
3、DragTarget 可以拖动的 widget
4、Dismissible 拖动时可隐藏的 widget
5、Navigator 导航器，可以在多个页面直接实现路由跳转,提供了打开和退出路由页面的方法，是通过一个栈来进行管理的
6、Scrollable 可滚动的 widget 的交互模型
