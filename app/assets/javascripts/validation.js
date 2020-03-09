// $(function(){
// 	$('input:submit[id="contact_send"]').click(function(){
// 		if(!contacts_input_check()){
// 			return false;
// 		}
//  });
// });

// function contacts_input_check(){
// 	var result = true;

// 	var name = $("#name").val();
//   var ruby = $("#ruby").val();
//   var email = $("#email").val();
//   var item = $("#item").val();
//   var content = $("#content").val();

//   // 入力内容チェック
//     // 商品名
//   if(name == ""){
//     $("#name").css('background-color', 'red');
//     result = false;
//     }
//   //商品の説明
//   if(ruby == ""){
//     $("#ruby").css('background-color', 'red');
//       result = false;
//     }
//   if(email == ""){
//     $("#email").css('background-color', 'red');
//     result = false;
//   }
//   if(item == ""){
//     $("#item").css('background-color', 'red');
//     result = false;
//   }
//   if(content == ""){
//     $("#content").css('background-color', 'red');
//     result = false;
//   }
//   return result;
// }

// $(function(){
//   $('#contact_send').click(function(){
//     var name = $("#name").val();
//     var ruby = $("#ruby").val();
//     var email = $("#email").val();
//     var item = $("#item").val();
//     var content = $("#content").val();
    
//     // 入力内容チェック
//       // 商品名
//     if(name == ""){
//       $('.contact-discription').html('　　　　　　　　　　　　　　　　　必須項目を入力してください。').css('color','red');
//       }
//     //商品の説明
//     if(ruby == ""){
//       $('.contact-discription').html('　　　　　　　　　　　　　　　　　必須項目を入力してください。').css('color','red');
//       }
//     if(email == ""){
//       $('.contact-discription').html('　　　　　　　　　　　　　　　　　必須項目を入力してください。').css('color','red');
//     }
//     if(item == ""){
//       $('.contact-discription').html('　　　　　　　　　　　　　　　　　必須項目を入力してください。').css('color','red');
//     }
//     if(content == ""){
//       $('.contact-discription').html('　　　　　　　　　　　　　　　　　必須項目を入力してください。').css('color','red');
//     }
//   });  
// });  

$(function(){
  $(document).ready(function(){
    var path = location.pathname;
    
    console.log(path);

    if(path != "/contact" && path != "/edit"){
      $('.contact-discription').html('　　　　　　　　　　　　　　　　　必須項目を入力してください。').css('color','red');
    }
  });  
});  