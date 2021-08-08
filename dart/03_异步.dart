import 'dart:async';

/**
 * 异步任务 用 Future 实现, 类似于JS中的Promise
 * Future.delayed 等待N时间
 * Future.then 
 * Future.catchError
 * Futire.whenComplelte 等待异步任务完成需要处理的场景
 * Future.await([]) 等待多个异步任务处理完成
 * 
 * Stream 也可以接收异步事件数据，与Future不同的是，接收多个异步操作的结果（成功或失败）
 */
void main() {
  print("start");
  Future<String> num = Future(() {
    return "第一个Future";
  });
  num.then((val) => print(val));

  Future.sync(() => print("同步执行Futuer"));
  Future.delayed(Duration(seconds: 1), () {
    print("延迟执行Futuer");
  });

  print("end");

  Future.delayed(new Duration(seconds: 2), () {
    return 'hello world';
  }).then((data) {
    print('等待2s后打印：$data');
  });

  // 使用：await async
  getLoginUser();

  // Stream
  Stream.fromFutures([
    Future.delayed(new Duration(seconds: 1), () {
      return 'case 1';
    }),
    Future.delayed(new Duration(seconds: 2), () {
      return 'case 2';
    }),
    Future.delayed(new Duration(seconds: 3), () {
      return 'case 3';
    })
  ]).listen((data) {
    print('stream listen: $data');
  });
}

void getLoginUser() async {
  var res = await Future.delayed(new Duration(seconds: 5), () {
    return 'nice to meet u';
  });
  print('等待5s后打印：$res');
}

// 登录
Future<String> login(String name, String pwd) {
  return Future.delayed(new Duration(seconds: 2), () {
    return name;
  });
}

// 获取用户信息
Future<Map> getUserInfo(String id) {
  return Future.delayed(new Duration(seconds: 4), () {
    return {
      id: id,
      'name': 'guanp',
    };
  });
}
