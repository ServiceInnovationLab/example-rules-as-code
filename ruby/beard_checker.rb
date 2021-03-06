# frozen_string_literal: true

class BeardChecker

  def self.is_beard?(length_in_mm:, on_or_below_chin:, unbroken_between_ears:)
    # In​ ​this​ ​Act,​ ​​beard​​ ​means​ ​any​ ​facial​ ​hair​ ​no​ ​shorter​ ​than​ ​5​ ​millimetres​ ​in​ ​length​ ​that:
    return false unless length_in_mm >= 5

    # a. occurs​ ​on​ ​or​ ​below​ ​the​ ​chin,​ ​or
    return true if on_or_below_chin

    # b. exists​ ​in​ ​an​ ​uninterrupted​ ​line​ ​from​ ​the​ ​front​ ​of​ ​one​ ​ear​ ​to​ ​the​ ​front​ ​​ ​of​ ​the​ ​other​ ​ear​ below the​ ​nose.
    return true if unbroken_between_ears

    false
  end

end
