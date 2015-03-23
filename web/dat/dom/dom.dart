part of GUI;

var EVENT_MAP = {
    'HTMLEvents': ['change'],
    'MouseEvents': ['click','mousemove','mousedown','mouseup', 'mouseover'],
    'KeyboardEvents': ['keydown']
  };

  var EVENT_MAP_INV = {};
  // TODO: common.each
//  common.each(EVENT_MAP, function(v, k) {
//    common.each(v, function(e) {
//      EVENT_MAP_INV[e] = k;
//    });
//  });

class DOM {
  void makeSelectable(Element element, bool selectable) {
    if (element == null || element.style == null)
      return;

    // TODO: Make sure this works as it should
    element.onSelectStart.listen((e) { if (selectable) return false; });  
//    element.onSelectStart = selectable ?
//        function() { 
//          return false
//        } : 
//        function() {
//          
//        };
    element.style.userSelect = selectable ? 'auto' : 'none';
  }
  
  void makeFullscreen(Element element) {// TODO: Type (bool horizontal, bool vertical)
    // TODO: Unused? Only called without horizontal/vertical arguments
    //if (common.isUndefined(horizontal)) horizontal = true;
    //if (common.isUndefined(vertical)) vertical = true;
    element.style.position = 'absolute';
    
//    if (horizontal) {
//      element.style.left = '0';
//      element.style.right = '0';
//    }
//    if (horizontal) {
//      element.style.top = '0';
//      element.style.bottom = '0';
//    }
  }
  
  void fakeEvent(Element element, String eventType, params) {
    if (params == null) params = {};
    String className = EVENT_MAP_INV[eventType];
    if (className.isEmpty) {
      // TODO: throw new Error('Event type' + eventType + ' is not supported.');
    }
  }
}