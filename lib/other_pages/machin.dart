import 'package:flutter/rendering.dart';

class NbaData extends GetView<Teams> {
  int _visibleItems = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener<ScrollNotification>(
        onNotification: (ScrollNotification scrollInfo) {
          if (scrollInfo is ScrollUpdateNotification) {
            // Calculate the new value for _visibleItems based on the scroll position
            final RenderViewport viewport = context.findRenderObject() as RenderViewport;
            final double scrollOffset = scrollInfo.metrics.pixels;
            final double itemHeight = 50.0; // Replace with the actual height of your list items
            final int newVisibleItems = (scrollOffset / itemHeight).ceil();
            setState(() {
              _visibleItems = newVisibleItems;
            });
          }
          return true;
        },
        child: ListView.builder(
          itemCount: _visibleItems,
          itemBuilder: (BuildContext context, int index) {
            if (index == _visibleItems - 1) {
              return CircularProgressIndicator();
            } else if (index < controller.jsonList.length) {
              var e = controller.jsonList[index];
              return ListTile(
                title: Text(e['full_name']),
              );
            } else {
              return SizedBox.shrink();
            }
          },
        ),
      ),
    );
  }
}