var inputAirportFrom = document.getElementById("inputAirportFrom");
    inputAirportFrom.setAttribute("disabled", "disabled");
   
    function activateInputAirportFrom(){
      inputAirportFrom.removeAttribute("disabled");
      }

    var inputAirportTo = document.getElementById("inputAirportTo");
    inputAirportTo.setAttribute("disabled", "disabled");

    function activateInputAirportTo() {
      inputAirportTo.removeAttribute("disabled");
    }

    var inputHotel = document.getElementById("inputHotel");
    inputHotel.setAttribute("disabled", "disabled");

    function activateInputHotel() {
      inputHotel.removeAttribute("disabled");
    }