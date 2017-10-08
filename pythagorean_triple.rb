def pythagorean_triple?(a, b, c)
  # TODO: return true/false depending if numbers a, b and c are Pythagorean triples
  # Sachin: think of recursive solution too
  # a.is_a?(Integer) ? b.is_a?(Integer) ? c.is_a?(Integer) ? a**2 + b**2 == c**2 : false : false : false
  a.is_a?(Integer) ? b.is_a?(Integer) ? c.is_a?(Integer) ? a**2 + b**2 == c**2 : false : false : false
end
