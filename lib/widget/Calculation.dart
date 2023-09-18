// dynamic text = "0"; //el out
// dynamic numOne = "0";
// dynamic numTwo = "0";
// dynamic result = '';
// dynamic finalResult = '';
// dynamic opr = ''; // mn el kybord
// dynamic preOpr = '';
// String add() {
//   result = (numOne + numTwo).toString();
//   numOne = double.parse(result);

//   return result;
// }

// String sub() {
//   result = (numOne - numTwo).toString();
//   numOne = double.parse(result);

//   return result;
// }

// String mult() {
//   result = (numOne * numTwo).toString();
//   numOne = double.parse(result);

//   return result;
// }

// String div() {
//   result = (numOne / numTwo).toString();
//   numOne = double.parse(result);

//   return result;
// }

// void Calculator(btext) {
//   if (btext == "AC") {
//     text = '0'; // el natge
//     numOne = 0;
//     numTwo = 0;
//     result = '';
//     finalResult = '';
//     opr = '';
//     preOpr = '';
//   } else if (opr == '=' || btext == '=') {
//     switch (preOpr) {
//       case '+':
//         finalResult = add();
//         break;
//       case '-':
//         finalResult = sub();
//         break;
//       case 'x':
//         finalResult = mult();
//         break;
//       case '/':
//         finalResult = div();
//         break;
//     }
//   } else if (btext == '+' ||
//       btext == '-' ||
//       btext == 'x' ||
//       btext == "/" ||
//       btext == '=') {
//     if (numOne == 0) {
//       numOne = double.parse(result);
//     } else {
//       numTwo = double.parse(result);
//     }
//     switch (opr) {
//       case '+':
//         finalResult = add();
//         break;
//       case '-':
//         finalResult = sub();
//         break;
//       case '*':
//         finalResult = mult();
//         break;
//       case '/':
//         finalResult = div();
//         break;
//     }
//   } else {
//     if (result == 0) {
//       result = btext;
//     }
//     result = result + btext;
//     finalResult = result;
//   }
// }

