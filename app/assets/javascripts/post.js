// $(function(){
//   $("form").submit(function(event){
//     event.preventDefault();
//     // event.stopPropagation();
//
//     var action = $(this).attr('action');
//     var method = $(this).attr('method');
//
//     var keywords = $(this).find('#keywords').val();
//
//
//     console.log(action);
//     console.log(method);
//     console.log(keywords);
//
//     var data = $(this).serializeArray();
//
//     $.ajax({
//       method: method,
//       url: action,
//       data: data,
//       success: function (data) {
//         console.log(data);
//
//         }
//
//     });
//
//   });
// });
