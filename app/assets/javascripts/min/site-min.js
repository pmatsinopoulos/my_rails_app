$(document).on("ready page:load",function(){$(".rating").raty({path:"/assets/images",scoreName:"comment[rating]"}),$(".rated").raty({path:"/assets/images",readOnly:!0,score:function(){return $(this).attr("data-score")}}),$(".img-zoom").elevateZoom()});