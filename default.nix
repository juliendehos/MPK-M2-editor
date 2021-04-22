with import <nixpkgs> {};

python3Packages.buildPythonApplication rec {
  pname = "mpk-m2-editor";
  version = "0.1.0";
  src = ./.;

  propagatedBuildInputs = with python3Packages; [
    python-rtmidi
    pyqt5
    qt5Full
  ];

}

