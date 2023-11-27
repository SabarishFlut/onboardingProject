import 'package:flutter/material.dart';

List <String> images=[
  "https://images.unsplash.com/photo-1546069901-ba9599a7e63c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1780&q=80",
  "https://images.unsplash.com/photo-1610415958681-7aabb05711f5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8aGVhbHRoeSUyMGZvb2RzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1478145046317-39f10e56b5e9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGhlYWx0aHklMjBmb29kc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60",
  "https://media.istockphoto.com/id/1375039697/photo/healthy-fruits-and-vegetables-salad-recipe.jpg?b=1&s=170667a&w=0&k=20&c=YzWsM-BQitBf9og-RKD9AEVtnzQ79yVeso6gzSNaXF4=",
  "https://media.istockphoto.com/id/1473874087/photo/woman-choosing-organic-fruits-and-vegetables-in-kitchen.jpg?b=1&s=170667a&w=0&k=20&c=7POsCRHterPm-IY2U6HlHsAcQV7vkS2Vav-_LGxV7G4=",
];

List <String> images1=[
  "https://plus.unsplash.com/premium_photo-1661592834823-118fa41621ec?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8eW9nYSUyMGFuZCUyMGV4ZXJjaXNlJTIwbWVufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60",
  "https://plus.unsplash.com/premium_photo-1661544493323-80e3c9dfd878?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fHlvZ2ElMjBhbmQlMjBleGVyY2lzZSUyMG1lbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60",
  "https://media.istockphoto.com/id/1472356948/photo/yoga-mat-fitness-and-black-man-drinking-water-in-nature-for-health-and-wellness-outdoors.jpg?b=1&s=170667a&w=0&k=20&c=6xmHqaPUXBZznN4DkM0W7Ipw85Gt1TGoQBWPCpiopSM=",
  "https://media.istockphoto.com/id/1406698031/photo/group-of-people-practicing-yoga-on-the-beach-at-sunrise.jpg?b=1&s=170667a&w=0&k=20&c=iwYNqp7iC_qK6Onpn9Tj4o0SircfTDy_j8pm7p2tYTw=",
  "https://plus.unsplash.com/premium_photo-1664908402144-153131605a53?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTAyfHx5b2dhJTIwYW5kJTIwZXhlcmNpc2UlMjBtZW58ZW58MHx8MHx8&auto=format&fit=crop&w=600&q=60"
];

List <String> images2=[
  "https://plus.unsplash.com/premium_photo-1661255445205-cb8958c3c0f3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aGFwcGluZXNzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1576678927484-cc907957088c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8Z3ltfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1502086223501-7ea6ecd79368?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGxheWluZ3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1549576490-b0b4831ef60a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8YWVyb2JpY3N8ZW58MHx8MHx8&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1526718583451-e88ebf774771?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjF8fGFlcm9iaWNzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60",
];

List <String> images3=[
  "https://plus.unsplash.com/premium_photo-1661495862613-9fdbcd14a1e4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fHZpcnR1YWwlMjBpbnRlcnZpZXd8ZW58MHx8MHx8&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1559223694-98ed5e272fef?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjZ8fHZpcnR1YWwlMjBzaG93JTIwJTIwaW50ZXJ2aWV3fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1560439513-74b037a25d84?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTR8fHZpcnR1YWwlMjBzaG93JTIwJTIwaW50ZXJ2aWV3fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60",
  "https://media.istockphoto.com/id/1223605834/photo/video-conference-concept-teleconference-telemeeting-webinar-online-seminar-e-learning.jpg?s=612x612&w=is&k=20&c=s8CXrUHDM-DswegIn6gnGovWpfU6qbSc_m01CIKSN0w=",
];

List<String> imagesP1=[
  "https://media.istockphoto.com/id/1457889029/photo/group-of-food-with-high-content-of-dietary-fiber-arranged-side-by-side.jpg?s=612x612&w=is&k=20&c=n4-M3CyEMJdmZEsXN92sIQAxQPDJeGPX2tkBk1s_RtE=",
  "https://media.istockphoto.com/id/894242814/photo/cheerful-male-athlete-talking-to-his-friend-on-exercising-training-in-a-health-club.jpg?s=1024x1024&w=is&k=20&c=JvYJ_umjM4mhh_kntlYHkTwKAvWwB9324a9uFH0FCkQ=",
  "https://images.unsplash.com/photo-1634141613544-001d33883517?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fGZvb2RzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60",
  "https://plus.unsplash.com/premium_photo-1661255445205-cb8958c3c0f3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aGFwcGluZXNzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1576678927484-cc907957088c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8Z3ltfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60",
];

List <String> imagesP2=[
  "https://plus.unsplash.com/premium_photo-1661592834823-118fa41621ec?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8eW9nYSUyMGFuZCUyMGV4ZXJjaXNlJTIwbWVufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60",
  "https://plus.unsplash.com/premium_photo-1661544493323-80e3c9dfd878?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fHlvZ2ElMjBhbmQlMjBleGVyY2lzZSUyMG1lbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60",
  "https://media.istockphoto.com/id/1472356948/photo/yoga-mat-fitness-and-black-man-drinking-water-in-nature-for-health-and-wellness-outdoors.jpg?b=1&s=170667a&w=0&k=20&c=6xmHqaPUXBZznN4DkM0W7Ipw85Gt1TGoQBWPCpiopSM=",
  "https://media.istockphoto.com/id/1406698031/photo/group-of-people-practicing-yoga-on-the-beach-at-sunrise.jpg?b=1&s=170667a&w=0&k=20&c=iwYNqp7iC_qK6Onpn9Tj4o0SircfTDy_j8pm7p2tYTw=",
  "https://plus.unsplash.com/premium_photo-1664908402144-153131605a53?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTAyfHx5b2dhJTIwYW5kJTIwZXhlcmNpc2UlMjBtZW58ZW58MHx8MHx8&auto=format&fit=crop&w=600&q=60"
];

List <String> imagesP3=[
  "https://plus.unsplash.com/premium_photo-1661495862613-9fdbcd14a1e4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fHZpcnR1YWwlMjBpbnRlcnZpZXd8ZW58MHx8MHx8&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1559223694-98ed5e272fef?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjZ8fHZpcnR1YWwlMjBzaG93JTIwJTIwaW50ZXJ2aWV3fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1560439513-74b037a25d84?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTR8fHZpcnR1YWwlMjBzaG93JTIwJTIwaW50ZXJ2aWV3fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60",
  "https://media.istockphoto.com/id/1223605834/photo/video-conference-concept-teleconference-telemeeting-webinar-online-seminar-e-learning.jpg?s=612x612&w=is&k=20&c=s8CXrUHDM-DswegIn6gnGovWpfU6qbSc_m01CIKSN0w=",
];

List<String> imagesN1 = [
  "https://images.unsplash.com/photo-1512621776951-a57141f2eefd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aGVhbHRoeSUyMGZvb2R8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1547592180-85f173990554?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8aGVhbHRoeSUyMGZvb2R8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1498837167922-ddd27525d352?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8aGVhbHRoeSUyMGZvb2R8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1606756790138-261d2b21cd75?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fGhlYWx0aHklMjBmb29kfGVufDB8fDB8fHww&auto=format&fit=crop&w=600&q=60"
];

List<String> imagesN2 = [
  "https://media.istockphoto.com/id/612835108/photo/freshly-baked-vegan-oatmeal-chocolate-chunk-cookies-on-cooling-rack.webp?b=1&s=170667a&w=0&k=20&c=uRDIVIP9WAJTwKuhy-n1qaEubawbPbvyjolQ3DKScW8=",
  "https://media.istockphoto.com/id/466724890/photo/healthy-homemade-carrot-cake.webp?b=1&s=170667a&w=0&k=20&c=GASX3r-NybvGFfDaSS5Xty9uIKu6HWbSjka7ivLtZSc=",
  "https://images.unsplash.com/photo-1483695028939-5bb13f8648b0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mzl8fGJha2luZyUyMGFuZCUyMGRlc3NlcnRzfGVufDB8fDB8fHww&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1583821381885-6daaea63191b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjR8fGJha2luZyUyMGFuZCUyMGRlc3NlcnRzfGVufDB8fDB8fHww&auto=format&fit=crop&w=600&q=60",
];

List<String> imagesN3 = [
  "https://images.unsplash.com/photo-1619221881504-d595af00028b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8dmVnaXRhcmlhbiUyMGZvb2RzfGVufDB8fDB8fHww&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1519996409144-56c88c9aa612?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fHZlZ2l0YXJpYW4lMjBmb29kc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1559528896-c5310744cce8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzN8fHZlZ2l0YXJpYW4lMjBmb29kc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1619337744329-78f4b9074fed?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzR8fHZlZ2l0YXJpYW4lMjBmb29kc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60"
];

List<String> imagesN4 = [
  "https://images.unsplash.com/photo-1624726175512-19b9baf9fbd1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTl8fHZlZ2l0YXJpYW4lMjBmb29kc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1576402187878-974f70c890a5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NjZ8fHZlZ2l0YXJpYW4lMjBmb29kc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1623855244183-52fd8d3ce2f7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8ODV8fHZlZ2l0YXJpYW4lMjBmb29kc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1662046001756-2b6d466ff4e4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8ODl8fHZlZ2l0YXJpYW4lMjBmb29kc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60"
];

List<String> imagesN5 = [
  "https://images.unsplash.com/photo-1662046001756-2b6d466ff4e4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8ODl8fHZlZ2l0YXJpYW4lMjBmb29kc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1628815756608-c8ac0cacf20b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjl8fEVhc3klMjBmb29kc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60"
  "https://images.unsplash.com/photo-1513262599279-d287e25f4d84?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzF8fEVhc3klMjBmb29kc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1559528896-c5310744cce8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDN8fEVhc3klMjBmb29kc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60"
];

List<String> imageN6 = [
  'https://images.unsplash.com/photo-1600891964599-f61ba0e24092?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cmVzdGF1cmFudCUyMGZvb2R8ZW58MHx8MHx8fDA%3D&w=1000&q=80'
];

List <String> imageN7 = [
  "https://media.istockphoto.com/id/508442101/photo/fried-chicken-and-waffles-close-up.webp?b=1&s=170667a&w=0&k=20&c=e9EfLBmAHLYEXo4OAuX1qsm5SFWrvbZ_0qT9WI5DD3Q=",
];

List imagePL1 = [
 "https://images.unsplash.com/photo-1542728928-ee495082a3c6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTc4fHxwbGFudCUyMGJhY2tncm91bmR8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60",
];
