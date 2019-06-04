export const reverseString = str =>
  str
    .split("")
    .reverse()
    .join("");

// In JavaScript reverse() method exists only for arrays,
// 1. Use split() to transform string into an array
// 2. Apply reverse() method
// 3. join() it all back together
