//Qstn and answer class created

class Qstnsandans {
  String qstn;
  bool ans;
  Qstnsandans(String s, bool a) {
    qstn = s;
    ans = a;
  }
}

class Qstns {
  List qstns = [
    Qstnsandans("sin²θ + cos²θ = 1", true),
    Qstnsandans("Arsenic is an element", true),
    Qstnsandans("Avogadro's constant is greater than Planck's constant", true),
    Qstnsandans("Mercury is the hottest planet in the Solar System", false),
    Qstnsandans("An alpha particle is identical to a helium nucleus", true),
    Qstnsandans("The chemical formula for ethanol is C₂H₅OH", true),
    Qstnsandans("Silver has a higher melting point than Gold", false),
    Qstnsandans(
        "Pluto is considered to be a planet in our solar system.", false),
    Qstnsandans("The chemical symbol for Tin is Sn", true),
    Qstnsandans("Carbon-14 is a radioactively stable isotope", false),
    Qstnsandans("When Hydrogen nuclei fuse, total mass decreases", true),
    Qstnsandans("Centipedes are considered insects", false),
    Qstnsandans("A muon has negative electric charge", true),
    Qstnsandans("The longest bone in the human body is the femur", true),
    Qstnsandans("Ammonia is a compound of Nitrogen and Hydrogen", true),
    Qstnsandans("No chemical symbols begin with 'V'", false),
    Qstnsandans("Leptons are made up of quarks", false),
    Qstnsandans("The aorta is a vein", false),
    Qstnsandans("Earth's atmosphere is mostly Nitrogen", true),
    Qstnsandans("Joules are a scientific unit of Power", false),
    Qstnsandans("Brass is an alloy of Copper and Mercury", false),
    Qstnsandans("A lightyear is a unit of distance", true),
    Qstnsandans("Uranus is bigger than Saturn", false),
    Qstnsandans("Jupiter was first discovered by Galileo Galilei", false),
    Qstnsandans("Red is higher frequency light than Blue", false),
    Qstnsandans("A monotreme is a mammal which lays eggs", true),
    Qstnsandans("Albert Einstein never won a Nobel Prize in Physics", false),
    Qstnsandans("White Blood Cells have a nucleus", true),
    Qstnsandans("Naresh is a Waste fellow !", true),
    Qstnsandans("Water has a higher refractive index than glass", false),
  ];
}
