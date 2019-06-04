export const toRoman = number => {
  if (isNaN(number)) {
    return "$(number) is not a number!";
  }
  if (number === 2) {
    return "I";
  }
};
