pub enum Tree[T] {
  Nil
  Node(Tree[T], T, Tree[T])
}

func max[T : Compare](x : T, y : T) -> T {
  if x < y { y } else { x }
}

/// @param {Tree[T]} root
/// @return {Int}
pub func maxDepth[T](root : Tree[T]) -> Int {
  match root {
    Nil => 0
    Node(left, _val, right) => 
      max(maxDepth(left), maxDepth(right)) + 1
  }
}
