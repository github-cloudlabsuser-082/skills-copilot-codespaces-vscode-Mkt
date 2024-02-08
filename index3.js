  // take a sentence as input
  // reverse the input sentence
  // the start of the sentence must start with a capital
  // for javascript
function reverseSentence(sentence) {
  // Split the sentence into an array of words
  let words = sentence.split(' ');

  // Reverse the array of words
  words.reverse();

  // Capitalize the first letter of the first word
  words[0] = words[0][0].toUpperCase() + words[0].substring(1);

  // Join the words back into a sentence
  let reversedSentence = words.join(' ');

  return reversedSentence;
}

// Example usage
let inputSentence = "take a sentence as input";
let reversedSentence = reverseSentence(inputSentence);
console.log(reversedSentence);
