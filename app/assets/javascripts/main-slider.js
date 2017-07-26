jssor_1_slider_init = function() {

    var jssor_1_SlideoTransitions = [
      [{b:-1,d:1,o:-1},{b:0,d:1140,x:20,y:24,o:1}],
      [{b:0,d:600,x:21,y:17}],
      [{b:0,d:1000,x:168,y:9}],
      [{b:-1,d:1,o:-1},{b:0,d:840,x:2,y:-73,o:0.7},{b:840,d:160,o:0.3}],
      [{b:-1,d:1,o:-1},{b:0,d:840,x:3,y:-183,o:1}],
      [{b:-1,d:1,o:-1},{b:0,d:840,y:-172,o:1}],
      [{b:-1,d:1,o:-1},{b:0,d:840,x:2,y:-160,o:1}],
      [{b:-1,d:1,o:-1},{b:0,d:1000,x:-15,y:45,o:1}],
      [{b:-1,d:1,o:-1},{b:0,d:1600,x:-288,y:9,o:1}],
      [{b:-1,d:1,o:-1},{b:0,d:1700,x:-288,y:3,o:1}],
      [{b:-1,d:1,o:-1},{b:0,d:1800,x:-288,y:-6,o:1}],
      [{b:-1,d:1,o:-1},{b:0,d:1200,x:233,y:-77,o:1}]
    ];

    var jssor_1_options = {
      $AutoPlay: 1,
      $Idle: 2000,
      $CaptionSliderOptions: {
        $Class: $JssorCaptionSlideo$,
        $Transitions: jssor_1_SlideoTransitions
      },
      $ArrowNavigatorOptions: {
        $Class: $JssorArrowNavigator$,
        $ChanceToShow: 1
      },
      $BulletNavigatorOptions: {
        $Class: $JssorBulletNavigator$,
        $SpacingX: 12,
        $SpacingY: 6
      }
    };

    var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);

    /*#region responsive code begin*/
    /*remove responsive code if you don't want the slider scales while window resizing*/
    function ScaleSlider() {
        var refSize = jssor_1_slider.$Elmt.parentNode.clientWidth;
        if (refSize) {
            refSize = Math.min(refSize, 1200);
            jssor_1_slider.$ScaleWidth(refSize);
        }
        else {
            window.setTimeout(ScaleSlider, 30);
        }
    }
    ScaleSlider();
    $Jssor$.$AddEvent(window, "load", ScaleSlider);
    $Jssor$.$AddEvent(window, "resize", ScaleSlider);
    $Jssor$.$AddEvent(window, "orientationchange", ScaleSlider);
    /*#endregion responsive code end*/
};
