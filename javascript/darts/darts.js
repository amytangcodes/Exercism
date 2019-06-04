export const solve = (x, y) => {
  let outer = 10;
  let middle = 5;
  let inner = 1;

  if (isNaN(x) || isNaN(y)) {
    return null;
  }

  if (x <= inner && y <= inner) {
    return 10;
  }

  if (x <= middle && y <= middle) {
    return 5;
  }

  if (x <= outer && y <= outer) {
    return 1;
  }

  if (x > outer && y > outer) {
    return 0;
  }
};
