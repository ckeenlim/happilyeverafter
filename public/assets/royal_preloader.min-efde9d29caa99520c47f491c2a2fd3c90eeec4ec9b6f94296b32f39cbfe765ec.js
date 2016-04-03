$.fn.myfunction = function () {

/*
|------------------------------------------|
| MelonHTML5 - Royal Preloader             |
|------------------------------------------|
| @author:  Lee Le (lee@melonhtml5.com)    |
| @version: 2.05 (05 March 2015)           |
| @website: www.melonhtml5.com             |
|------------------------------------------|
*/

/**
  (https://developer.mozilla.org/en-US/docs/DOM/document.cookie)
  docCookies.setItem(name, value[, end[, path[, domain[, secure]]]])
  docCookies.getItem(name)
  docCookies.removeItem(name[, path])
  docCookies.hasItem(name)
*/
var docCookies={getItem:function(a){return!a||!this.hasItem(a)?null:unescape(document.cookie.replace(RegExp("(?:^|.*;\\s*)"+escape(a).replace(/[\-\.\+\*]/g,"\\$&")+"\\s*\\=\\s*((?:[^;](?!;))*[^;]?).*"),"$1"))},setItem:function(a,c,b,e,f,g){if(a&&!/^(?:expires|max\-age|path|domain|secure)$/i.test(a)){var d="";if(b)switch(b.constructor){case Number:d=Infinity===b?"; expires=Tue, 19 Jan 2038 03:14:07 GMT":"; max-age="+b;break;case String:d="; expires="+b;break;case Date:d="; expires="+b.toGMTString()}document.cookie=
escape(a)+"="+escape(c)+d+(f?"; domain="+f:"")+(e?"; path="+e:"")+(g?"; secure":"")}},removeItem:function(a,c){a&&this.hasItem(a)&&(document.cookie=escape(a)+"=; expires=Thu, 01 Jan 1970 00:00:00 GMT"+(c?"; path="+c:""))},hasItem:function(a){return RegExp("(?:^|;\\s*)"+escape(a).replace(/[\-\.\+\*]/g,"\\$&")+"\\s*\\=").test(document.cookie)}};

var JQ=jQuery;window.requestAnimFrame=function(){return window.requestAnimationFrame||window.webkitRequestAnimationFrame||window.mozRequestAnimationFrame||window.oRequestAnimationFrame||window.msRequestAnimationFrame||function(a){window.setTimeout(a,1E3/60)}}();
window.transitionEnd=function(a,c){var b=!1,d=document.createElement("div");JQ(["transition","WebkitTransition","MozTransition","msTransition"]).each(function(a,c){if(void 0!==d.style[c])return b=!0,!1});b?a.bind("webkitTransitionEnd oTransitionEnd MSTransitionEnd transitionend",function(b){a.unbind("webkitTransitionEnd oTransitionEnd MSTransitionEnd transitionend");c(b,a)}):setTimeout(function(){c(null,a)},0);return a};
var Royal_Preloader={_overlay:null,_loader:null,_name:null,_percentage:null,_on_complete:null,_text_loader:null,_text_loader_overlay:null,_logo_loader:null,_logo_loader_meter:null,_total:0,_loaded:0,_image_queue:[],_percentage_loaded:0,_mode:"number",_text:"loading...",_text_colour:"#FFFFFF",_images:[],_show_progress:!0,_show_percentage:!0,_background:"#000000",_logo:"",_logo_size:[80,80],_cookie:!1,_timeout:10,_init:function(){JQ("img").each(function(a){JQ(this).attr("src")&&Royal_Preloader._images.push(JQ(this).attr("src"))});
if(Royal_Preloader._cookie){if(docCookies.getItem("melonhtml5_royal_preloader_"+Royal_Preloader._cookie)){JQ("#royal_preloader").remove();JQ(document.body).removeClass("royal_preloader");return}docCookies.setItem("melonhtml5_royal_preloader_"+Royal_Preloader._cookie,(new Date).getTime(),Infinity)}Royal_Preloader._total=Royal_Preloader._images.length;Royal_Preloader._build();Royal_Preloader._load()},_build:function(){this._overlay=JQ("#royal_preloader");this._overlay.length||(this._overlay=JQ("<div>").attr("id",
"royal_preloader").prependTo(JQ(document.body)));this._overlay.addClass("royal_preloader_"+this._mode);"line"!==this._mode&&this._overlay.css("background-color",this._background);switch(this._mode){case "number":this._percentage=JQ("<div>").addClass("royal_preloader_percentage").appendTo(this._overlay);break;case "text":this._text_loader=JQ("<div>").addClass("royal_preloader_loader").text(this._text).css("color",this._text_colour).appendTo(this._overlay);this._text_loader_overlay=JQ("<div>").css("background-color",
this._background).appendTo(this._text_loader);break;case "logo":this._logo_loader=JQ("<div>").css({width:this._logo_size[0],height:this._logo_size[1],"margin-left":this._logo_size[0]/2*-1,"margin-top":this._logo_size[1]/2*-1,"background-image":'url("'+this._logo+'")'}).addClass("royal_preloader_loader").appendTo(this._overlay);this._logo_loader_meter=JQ("<div>").css("background-color",this._background).appendTo(this._logo_loader);this._show_progress&&(this._percentage=JQ("<div>").css({color:this._text_colour,
width:this._logo_size[0],height:this._logo_size[1],"margin-left":this._logo_size[0]/2*-1,"margin-top":this._logo_size[1]/2,"background-color":this._background}).addClass("royal_preloader_percentage").appendTo(this._overlay));break;case "line":this._line_loader=JQ("<div>").addClass("royal_preloader_loader").css("background-color",this._background).appendTo(this._overlay);JQ("<div>").addClass("royal_preloader_peg").css("box-shadow","0 0 10px "+this._background).appendTo(this._line_loader);JQ(document.body).css("visibility",
"visible");break;case "progress":this._progress_loader=JQ("<div>").addClass("royal_preloader_loader").appendTo(this._overlay),this._progress_loader_meter=JQ("<div>").addClass("royal_preloader_meter").appendTo(this._progress_loader),this._show_progress&&(this._percentage=JQ("<div>").addClass("royal_preloader_percentage").text(0).appendTo(this._overlay))}this._overlay.appendTo(JQ(document.body));"text"===this._mode&&this._text_loader.css("margin-left",this._text_loader.width()/2*-1)},_load:function(){"number"!==
this._mode&&"logo"!==this._mode&&"progress"!==this._mode||!this._show_progress||(this._percentage.data("num",0),this._percentage.text("0"+(Royal_Preloader._show_percentage?"%":"")));JQ.each(this._images,function(a,c){var b=function(){Royal_Preloader._imageOnLoad(c)},d=new Image;d.src=c;d.complete?b():(d.onload=b,d.onerror=b)});setTimeout(function(){Royal_Preloader._overlay&&Royal_Preloader._animatePercentage(Royal_Preloader._percentage_loaded,100)},this._images.length?1E3*this._timeout:0)},_animatePercentage:function(a,
c){Royal_Preloader._percentage_loaded=a;a<c&&(a++,setTimeout(function(){switch(Royal_Preloader._mode){case "text":Royal_Preloader._text_loader_overlay.css("left",a+"%");break;case "line":Royal_Preloader._line_loader.width(a+"%");break;case "number":if(Royal_Preloader._show_progress){var b=a+(Royal_Preloader._show_percentage?"%":"");Royal_Preloader._percentage.text(b)}break;case "logo":Royal_Preloader._show_progress&&(b=a+(Royal_Preloader._show_percentage?"%":""),Royal_Preloader._percentage.text(b));
Royal_Preloader._logo_loader_meter.css("bottom",a+"%");break;case "progress":Royal_Preloader._show_progress&&(b=a+(Royal_Preloader._show_percentage?"%":""),Royal_Preloader._percentage.text(b)),Royal_Preloader._progress_loader_meter.width(a+"%")}Royal_Preloader._animatePercentage(a,c)},5),100===a&&Royal_Preloader._loadFinish())},_imageOnLoad:function(a){this._image_queue.push(a);this._image_queue.length&&this._image_queue[0]===a&&this._processQueue()},_reQueue:function(){Royal_Preloader._image_queue.splice(0,
1);Royal_Preloader._processQueue()},_processQueue:function(){0!==this._image_queue.length&&(this._loaded++,Royal_Preloader._animatePercentage(Royal_Preloader._percentage_loaded,parseInt(this._loaded/this._total*100,10)),this._reQueue())},_loadFinish:function(){transitionEnd(this._overlay,function(a,c){Royal_Preloader._overlay&&(Royal_Preloader._overlay.remove(),Royal_Preloader._overlay=null)});this._overlay.addClass("complete");JQ(document.body).removeClass("royal_preloader");this._on_complete&&this._on_complete()},
config:function(a){"undefined"!==typeof a.mode&&(this._mode=a.mode);"undefined"!==typeof a.text&&(this._text=a.text);"undefined"!==typeof a.text_colour&&(this._text_colour=a.text_colour);"undefined"!==typeof a.timeout&&(this._timeout=parseInt(a.timeout,10));"undefined"!==typeof a.showProgress&&(this._show_progress=a.showProgress?!0:!1);"undefined"!==typeof a.showPercentage&&(this._show_percentage=a.showPercentage?!0:!1);"undefined"!==typeof a.background&&(this._background=a.background);"undefined"!==
typeof a.logo&&(this._logo=a.logo);"undefined"!==typeof a.logo_size&&(this._logo_size=a.logo_size);"undefined"!==typeof a.onComplete&&(this._on_complete=a.onComplete);"undefined"!==typeof a.images&&(this._images=a.images);"undefined"!==typeof a.cookie&&(this._cookie=a.cookie)}};setTimeout(function(){JQ(document).ready(Royal_Preloader._init)});

Royal_Preloader.config({
    onComplete: function() {
        $('.bounce-animated').addClass('bounce animated');
        $('.flash-animated').addClass('flash animated');
        $('.pulse-animated').addClass('pulse animated');
        $('.rubberBand-animated').addClass('rubberBand animated');
        $('.shake-animated').addClass('shake animated');
        $('.swing-animated').addClass('swing animated');
        $('.tada-animated').addClass('tada animated');
        $('.wobble-animated').addClass('wobble animated');
        $('.bounceIn-animated').addClass('bounceIn animated');
        $('.bounceInDown-animated').addClass('bounceInDown animated');
        $('.bounceInLeft-animated').addClass('bounceInLeft animated');
        $('.bounceInRight-animated').addClass('bounceInRight animated');
        $('.bounceInUp-animated').addClass('bounceInUp animated');
        $('.bounceOut-animated').addClass('bounceOut animated');
        $('.bounceOutDown-animated').addClass('bounceOutDown animated');
        $('.bounceOutLeft-animated').addClass('bounceOutLeft animated');
        $('.bounceOutRight-animated').addClass('bounceOutRight animated');
        $('.bounceOutUp-animated').addClass('bounceOutUp animated');
        $('.fadeIn-animated').addClass('fadeIn animated');
        $('.fadeInDown-animated').addClass('fadeInDown animated');
        $('.fadeInDownBig-animated').addClass('fadeInDownBig animated');
        $('.fadeInLeft-animated').addClass('fadeInLeft animated');
        $('.fadeInLeftBig-animated').addClass('fadeInLeftBig animated');
        $('.fadeInRight-animated').addClass('fadeInRight animated');
        $('.fadeInRightBig-animated').addClass('fadeInRightBig animated');
        $('.fadeInUp-animated').addClass('fadeInUp animated');
        $('.fadeInUpBig-animated').addClass('fadeInUpBig animated');
        $('.fadeOut-animated').addClass('fadeOut animated');
        $('.fadeOutDown-animated').addClass('fadeOutDown animated');
        $('.fadeOutDownBig-animated').addClass('fadeOutDownBig animated');
        $('.fadeOutLeft-animated').addClass('fadeOutLeft animated');
        $('.fadeOutLeftBig-animated').addClass('fadeOutLeftBig animated');
        $('.fadeOutRight-animated').addClass('fadeOutRight animated');
        $('.fadeOutRightBig-animated').addClass('fadeOutRightBig animated');
        $('.fadeOutUp-animated').addClass('fadeOutUp animated');
        $('.fadeOutUpBig-animated').addClass('fadeOutUpBig animated');
        $('.flip-animated').addClass('flip animated');
        $('.flipInX-animated').addClass('flipInX animated');
        $('.flipInY-animated').addClass('flipInY animated');
        $('.flipOutX-animated').addClass('flipOutX animated');
        $('.flipOutY-animated').addClass('flipOutY animated');
        $('.lightSpeedIn-animated').addClass('lightSpeedIn animated');
        $('.lightSpeedOut-animated').addClass('lightSpeedOut animated');
        $('.rotateIn-animated').addClass('rotateIn animated');
        $('.rotateInDownLeft-animated').addClass('rotateInDownLeft animated');
        $('.rotateInDownRight-animated').addClass('rotateInDownRight animated');
        $('.rotateInUpLeft-animated').addClass('rotateInUpLeft animated');
        $('.rotateInUpRight-animated').addClass('rotateInUpRight animated');
        $('.rotateOut-animated').addClass('rotateOut animated');
        $('.rotateOutDownLeft-animated').addClass('rotateOutDownLeft animated');
        $('.rotateOutDownRight-animated').addClass('rotateOutDownRight animated');
        $('.rotateOutUpLeft-animated').addClass('rotateOutUpLeft animated');
        $('.rotateOutUpRight-animated').addClass('rotateOutUpRight animated');
        $('.slideInDown-animated').addClass('slideInDown animated');
        $('.slideInLeft-animated').addClass('slideInLeft animated');
        $('.slideInRight-animated').addClass('slideInRight animated');
        $('.slideInUp-animated').addClass('slideInUp animated');
        $('.slideOutDown-animated').addClass('slideOutDown animated');
        $('.slideOutLeft-animated').addClass('slideOutLeft animated');
        $('.slideOutRight-animated').addClass('slideOutRight animated');
        $('.slideOutUp-animated').addClass('slideOutUp animated');
        $('.zoomIn-animated').addClass('zoomIn animated');
        $('.zoomInDown-animated').addClass('zoomInDown animated');
        $('.zoomInLeft-animated').addClass('zoomInLeft animated');
        $('.zoomInRight-animated').addClass('zoomInRight animated');
        $('.zoomInUp-animated').addClass('zoomInUp animated');
        $('.zoomOut-animated').addClass('zoomOut animated');
        $('.zoomOutDown-animated').addClass('zoomOutDown animated');
        $('.zoomOutLeft-animated').addClass('zoomOutLeft animated');
        $('.zoomOutRight-animated').addClass('zoomOutRight animated');
        $('.zoomOutUp-animated').addClass('zoomOutUp animated');
        $('.hinge-animated').addClass('hinge animated');
        $('.rollin-animated').addClass('rollin animated');
        $('.rollOut-animated').addClass('rollOut animated');
    }
});

};

var docCookies = null;
$('.test_tan').myfunction();




