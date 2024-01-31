$(document).ready(function () {
	
    var token = $("meta[name='_csrf']").attr("content");
    var header = $("meta[name='_csrf_header']").attr("content");
    $(document).ajaxSend(function (e, xhr, options) {
        if (options.type == "POST") {
            xhr.setRequestHeader(header, token);
        }
    });

    window.onload = function () {
        var editLocText = $('.editLoc').text();
        if (editLocText === " Delivery In") {
            $('.imgTopNormal').removeClass('hide');
            $('.imgTopEdit').addClass('hide');

        } else {
            $('.imgTopEdit').removeClass('hide');
            $('.imgTopNormal').addClass('hide');
        }
    };
    function setUserArea(pincode, cityName) {
        $.ajax({
            url: setUserCityUri,
            type: "GET",
            cache: false,
            data: {
                pinCode: pincode,
                cityName: cityName,
            },
            dataType: "json",
            success: function (response) {
                if (response.success === true) {
                    let requestUri = window.location.href;
                    let cat = requestUri.substring(requestUri.lastIndexOf("/") + 1);                    
                    if (response.redirectToCourier === true) {
                        window.location.href = allGiftsPageUrl;
                    } else {
                        localStorage.removeItem('modalCloseViaContinue');
                        location.reload();
                    }
                }
            }
        });
    }
    function removeUserArea() {
        localStorage.setItem("cityRemove", true);
        let pinCode = null;
        let cityName = null;
        $.ajax({
            url: setUserCityUri,
            type: "GET",
            cache: false,
            data: {
                pinCode: pinCode,
                cityName: cityName,
            },
            dataType: "json",
            success: function (response) {              
                if (response.success === true) {
                        location.reload();
                }
            }
        });
    }
    let errorMsg = 0;
    $("#ckPin").click(function () {
      $('#wrPinMsg').show();
        localStorage.setItem("crossClicked", false);
        localStorage.setItem("viaCheck", 'viaCheck');
        let pincode = $("#indiaSearchPin").val();
        var url = checkUserPin + "?pinCode=" + pincode;
        errorMsg = 0;
        $('.shoppingIndia').css({"opacity": "1", "pointer-events": "auto"});
        $.ajax({
            url: url,
            type: 'get',
            success: function (response) {
                if (response.success === true) {
                    $('.shoppingIndia').css({"opacity": "1", "pointer-events": "auto"});
                    if (response.isAvailable === false) {
                        $("#wrPinMsg").removeClass("hide");
                        $("#wrPinMsg").html(response.message);
                         $('#unselected').addClass('marginTopPincode');
                               $('.unselected').addClass("checkMarginTop");
                    } else {
                        instanceDeliveryLoc.close();
                        $("#wrPinMsg").addClass("hide");
                        localStorage.setItem("selectedCtyNameSuggestion", false);
                        localStorage.setItem("selectedPincodeSuggestion", true);
                        localStorage.setItem("selectedSuggestion", response.pinCity);
                        localStorage.setItem("selectedCityPostal", pincode);
                        designChange();
                        cityIndiaSelected();
                    }

                } else {
                    $("#wrPinMsg").removeClass("hide");
                    $('.shoppingIndia').css({"opacity": "0.5", "pointer-events": "none"});
                    $("#wrPinMsg").html(response.message);
                     $('#unselected').addClass('marginTopPincode');
                    $('.unselected').addClass("checkMarginTop");
                    errorMsg = 1;
                }
            }
        });
    });
    $(".backButton").click(function (e) {
        if (errorMsg === 1) {
            $('.shoppingIndia').css({"opacity": "1", "pointer-events": "auto"});
        }
    });
    $(".shoppingCountry").click(function (e) {
        e.preventDefault();
        let countryCity = $(".onEditCountryCity").text();
        let countryId = localStorage.getItem("sCountryId");
        $.ajax({
            url: setCountryUri,
            type: "GET",
            cache: false,
            data: {
                countryId: countryId,
                countryCity: countryCity,
            },
            dataType: "json",
            success: function (response) {
                if (response.success === true && countryCity.toUpperCase() != 'Select Delivery City'.toUpperCase()) {
                       localStorage.removeItem("sCountryId");
                       let jumpTo = $(".shoppingCountry").attr("href");
                       let currentInternationalCity = jumpTo+ '?c='+countryCity;
                         if(countryCity.indexOf(",") > -1) {
                		    currentInternationalCity = jumpTo+ '?c='+countryCity.substring(0, countryCity.indexOf(","));
                		 }
                            location.href = currentInternationalCity;
                      } else if(response.success === true) {
                          localStorage.removeItem("sCountryId");
                              let jumpTo = $(".shoppingCountry").attr("href");
                               location.href = jumpTo;
                      } else {
                        $("#wrPinMsg").removeClass("hide");
                        $("#wrPinMsg").html(response.message);
                        $('#unselected').addClass('marginTopPincode');
                }
            }
        });

    });
    var showEnterCity = true;
    var crossClicked = localStorage.getItem("crossClicked");
    $('.city-navbar-bottom-link').click(function () {
        localStorage.setItem("crossClicked", false);
        localStorage.setItem("cityRemove", false);
    });
    if ($('#openCitySearchModal').length > 0) {
        function designChange() {
            var selectedCtyNameSuggestion = localStorage.getItem("selectedCtyNameSuggestion");
            var selectedPincodeSuggestion = localStorage.getItem("selectedPincodeSuggestion");
            $("#wrPinMsg").addClass("hide");
            $('.shoppingIndia').removeClass('hide');
            $('.shoppingIndia').addClass('modal-close');
            $('.shoppingIndia').css({"background-color": "#318800", "pointer-events": "auto"});
            $('.selectedbt').removeClass('hide');
            $('.selectedbt').addClass('modal-close');
            $('.selectedbt').css({"background-color": "#318800", "pointer-events": "auto"});
            $('.imgEdit').removeClass('hide');
            $('.imgNormal').addClass('hide');
            $('#ckPin').css("pointer-events", "none");
            $('.inputBorder').css({"pointer-events": "none", "caret-color": "transparent", "background-color": "#F2F2F2", "border": "1px solid #D5D5D5", "box-shadow": "0 0 5px #fafafa"});
            $('.clearCitySearch').removeClass('hide');
            $('.unselected').addClass('hide');
            $('#indiaSearchPin').attr('type', 'text');
            if (selectedPincodeSuggestion === "true") {
                $('#indiaSearchPin').prop('readonly', true);
                $('#indiaSearchPin').prop('disabled', true);
                $('.byName').addClass('hide');
                $('.byPincode').removeClass('hide');
            }
            if (selectedCtyNameSuggestion === "true") {
                $('#indiaCityByName').attr('type', 'text');
                $('#indiaCityByName').prop('readonly', true);
                $('#indiaCityByName').prop('disabled', true);
                $('.byName').removeClass('hide');
                $('.byPincode').addClass('hide');
            }
        }
        function cityIndiaSelected() {
            var selectedSuggestion = localStorage.getItem("selectedSuggestion");
            var selectedCtyNameSuggestion = localStorage.getItem("selectedCtyNameSuggestion");
            var selectedPincodeSuggestion = localStorage.getItem("selectedPincodeSuggestion");
            if (selectedPincodeSuggestion === "true") {
                $('#indiaSearchPin').val(selectedSuggestion);
                $('.onEdit').text(selectedSuggestion);
                $('.onEditCity').text(selectedSuggestion);
            }
            if (selectedCtyNameSuggestion === "true") {
                $('#indiaCityByName').val(selectedSuggestion);
                $('.onEdit').text(selectedSuggestion);
                $('.onEditCity').text(selectedSuggestion);
            }
        }
        var deliveryLocModalId = document.getElementById('deliveryLocModal');
        var instanceDeliveryLoc = M.Modal.init(deliveryLocModalId);
        $(".shoppingIndia").click(function () {
            localStorage.removeItem("viaCheck");
            localStorage.setItem('modalCloseViaContinue', true);
            var selectedCtyNameSuggestion = localStorage.getItem('selectedCtyNameSuggestion');
            var selectedPincodeSuggestion = localStorage.getItem('selectedPincodeSuggestion');
            var selectedCityPostal = localStorage.getItem("selectedCityPostal");
            localStorage.setItem('cityRemove', false);
            let userCity = $(".onEdit").text();
            if (selectedCtyNameSuggestion === "true") {
                if (userCity.indexOf("-") !== -1) {
                    userCity = userCity.substring(userCity.indexOf(",") + 1);
                }
                $('.editLoc').text("Deliver In" + userCity);
                setUserArea(null, userCity);
                localStorage.setItem("crossClicked", false);
            }
            if (selectedPincodeSuggestion === "true") {
                $('.editLoc').text("Deliver In " + selectedCityPostal);
                setUserArea(selectedCityPostal, null);
                localStorage.setItem("crossClicked", false);
            }
        });
         $(".backButton").click(function () {
                if($("#indiaSearchPin").val()===''){
                $('.shoppingIndia').css({"background-color": "#9E9999", "pointer-events": "none"});
                }
         });
        $('.countryCityContainer').removeClass('hide');
        var setReverseCityPincode;
        if ($(".editLoc").length) {
            let sessionCity = $(".editLoc").attr("data-sessionCity");
            var selectedCtyNameSuggestion = localStorage.getItem('selectedCtyNameSuggestion');
            var selectedPincodeSuggestion = localStorage.getItem('selectedPincodeSuggestion');
            var crossClicked = localStorage.getItem('crossClicked');
            var cityRemove = localStorage.getItem('cityRemove');
            if (typeof sessionCity != 'undefined' && sessionCity.length > 2) {
                designChange();
                const splitSessionCity = sessionCity.split(",").reverse();
                const reverseSessionCity = splitSessionCity.join(", ");
                setReverseCityPincode = reverseSessionCity;
                let selectedCityPostal = sessionCity.substring(sessionCity.indexOf(",") + 1)
                localStorage.setItem("selectedCityPostal", selectedCityPostal);
                localStorage.setItem("selectedSuggestion", reverseSessionCity);
                $('.editLoc').text("Deliver In " + setReverseCityPincode);
                presentCity = false;
                localStorage.removeItem("addressSelected");
            } else {
                if (selectedPincodeSuggestion === "true" || selectedCtyNameSuggestion === "true") {
                    localStorage.removeItem("selectedSuggestion");
                    localStorage.removeItem('crossClicked');
                    crossClicked = localStorage.getItem('crossClicked');
                }
                if ((crossClicked === null || crossClicked === "null" || typeof crossClicked === 'undefined' || crossClicked === 'false') && (cityRemove === null || cityRemove === "null" || typeof cityRemove === 'undefined' || cityRemove === false || cityRemove === "false") && selectedCtyNameSuggestion === "true") {
                    presentCity = true;
                    if (selectedCtyNameSuggestion === "true") {
                        designChange();
                    }
                }
            }
        }
        var checkCountry = $('#internaCountry').val();
        var selectedCountryCitySuggestion = localStorage.getItem("selectedCountryCitySuggestion");
        var selectedSuggestion = localStorage.getItem("selectedSuggestion");
        $(document).on('click', '.unselected', function () {
            $("#wrPinMsg").addClass("hide");
            localStorage.setItem("dontKnowPinClicked", true);
            $('.unselected').addClass("hide");
            $('.byName').removeClass('hide');
            $('.byPincode').addClass('hide');
        });
        $(document).on('click', '.delLocClose', function () {
            var dontKnowPinClicked = localStorage.getItem("dontKnowPinClicked");
            const indiaCityByName = $('#indiaCityByName').val();
            const indiaSearchPin = $('#indiaSearchPin').val();
            if (dontKnowPinClicked === "true" && indiaCityByName === '') {
                $('.unselected').removeClass("hide");
                $('.byName').addClass('hide');
                $('.byPincode').removeClass('hide');
                localStorage.removeItem("dontKnowPinClicked");
            }
            $(document).on("click", ".adobDynamicCityName a", adbCityLocationSearchMob);
            $('.adbCitySelect').find('a').on("click", selectCityClick);
            $('#wrPinMsg').hide();

        });
        $('.withInIndia').on('click', function () {
            if ($('.unselected').hasClass('hide') && $('.onEdit').text === 'Enter Delivery Pincode or Area') {
                $('.unselected').removeClass("hide");
                $('.onEdit').addClass("ramrahim");
                $('.byName').addClass('hide');
                $('.byPincode').removeClass('hide');
            }
        });
        $('#deliveryLocModal').removeClass('modal-close');
        $('#openCitySearchModal').modal({closeOnClick: false});
        function getCountryId(clickedElement) {
            var getCountryName = clickedElement.find(".contryText").text().trim().replace(/-/g, " ");
            if (getCountryName.toLowerCase() === 'usa') {
                getCountryName = "United States";
            }
            if (getCountryName.toLowerCase() === 'uae') {
                getCountryName = "United Arab Emirates";
            }
            if (getCountryName.toLowerCase() === 'uk') {
                getCountryName = "United Kingdom";
            }
            $.ajax({
                url: getCountryIdUri + '/' + getCountryName,
                type: "GET",
                dataType: "json",
                success: function (data) {
                    if (data.success === true) {
                        var countryCitySearchId = data.countryId;
                        showEnterCity = data.showEnterCity;
                        if (showEnterCity === false) {
                            localStorage.setItem("showEnterCityCheck", false);
                            $('.outSideCountryCity').addClass('hide');
                        } else {
                            localStorage.removeItem("showEnterCityCheck");
                            $('.outSideCountryCity').removeClass('hide');
                        }
                        localStorage.setItem("countryCitySearchId", countryCitySearchId);
                        localStorage.setItem("sCountryId", countryCitySearchId);
                    }
                },
                error: function (response) {
                    alert(response.message);
                }
            });
        }
        function setSelectedCountry(selectedCountry, hrefValue) {
            localStorage.setItem("selectedHrefValue", hrefValue);
            localStorage.setItem("selectedCountryStore", selectedCountry);
            localStorage.removeItem("selectedCountryCitySuggestion");
            $('.shoppingCountry').attr('href', hrefValue);
            $('.onEditCountry').text(selectedCountry);
            $('#countrySelected').html($('#' + selectedCountry.toLowerCase()).html());
            $('#countrySelected').find(".contryText").css("color", "#222222");
            $('#countrySelected').find("a").css("pointer-events", "none");
            $('#' + selectedCountry.toLowerCase()).addClass('hide');
            if (selectedCountry == 'india') {
                $('.imgNormalCountry').removeClass('hide');
                $('.imgEditCountry').addClass('hide');
                $('.shoppingCountry').css({"background-color": "#9E9999", "pointer-events": "none"});
                $('.outSideCountryCity').css({"opacity": "0.5", "pointer-events": "none"});
            } else {
                $('.imgNormalCountry').addClass('hide');
                $('.imgEditCountry').removeClass('hide');
                $('.outSideCountryCity').css({"opacity": "1", "pointer-events": "auto"});
                $('.shoppingCountry').css({"background-color": "#318800", "pointer-events": "auto"});
            }
        }
            $('.countrySpace').find('.modal-close').on("click", function () {
                getCountryId($(this));
                let selectedCountry = $(this).find(".contryText").text().trim();
                let countryFlag = $(this).find(".contryImg").attr("src");
                let replaceGlobeImage = document.getElementById('replaceGlobeImage');
                const newSrc = countryFlag; // Use the countryFlag as the new source
                replaceGlobeImage.setAttribute('src', newSrc);
               $("#replaceGlobeImage").addClass('countryFlagDesign');
                let hrefValue = $(this).find('a').attr('href');
                $('.countrySpace').find('.modal-close').each(function () {
                    let prevSelectedCountry = $(this).attr("id").toLowerCase();
                    if (prevSelectedCountry !== selectedCountry.toLowerCase() && $('#' + prevSelectedCountry).hasClass('hide')) {
                        clearCountryCitySearch();
                        $('#' + prevSelectedCountry).removeClass('hide');
                    }
                });
                $('.onEditCountry').addClass('fontWeightText');
                setSelectedCountry(selectedCountry, hrefValue);
            });
        window.addEventListener('beforeunload', function () {
            localStorage.removeItem("showEnterCityCheck");
            localStorage.removeItem("viaCheck");
            localStorage.removeItem("selectedHrefValue");
            localStorage.removeItem("selectedCountryStore");
            localStorage.removeItem('modalCloseViaContinue');
            localStorage.removeItem('crossClicked');
        });
        let selectedCountry = localStorage.getItem("selectedCountryStore");
        let hrefValue = localStorage.getItem("selectedHrefValue");
        if (selectedCountry !== null) {
            setSelectedCountry(selectedCountry, hrefValue);
        } else {
            selectedCountry = 'india';
            $('.onEditCountry').text('Select Country');
            $('.onEditCountryCity').text('Select Delivery City');
        }
        if ($('#countrySelected').length > 0) {
            $('#countrySelected').html($('#' + selectedCountry.toLowerCase()).html());
            $('#countrySelected').find(".contryText").css("color", "#222222");
            $('#countrySelected').find("a").css("pointer-events", "none");
            $('#' + selectedCountry.toLowerCase()).addClass('hide');
        }
        if (checkCountry !== 'INTERNATIONAL') {
            var defultCheck;
            defultCheck = document.querySelector('input[type=radio][name=with-india]');
            defultCheck.checked = true;
            $('#openCitySearchModal').modal({
                onOpenEnd: function () {
                    $('#openCitySearchModal input[name=with-india]').prop('checked', true);
                    withinIndiaClick();
                        let $citySpan = $(".citySearchSecondCmn.onEdit");
                        let text = $citySpan.text();

                        if (text.startsWith(",")) {
                          let newText = text.substring(1);
                          $citySpan.text(newText);
                        }
                },
                onCloseEnd: function () {
                    var modalCloseViaContinue = localStorage.getItem('modalCloseViaContinue');
                    var selectedCtyNameSuggestion = localStorage.getItem('selectedCtyNameSuggestion');
                    var selectedPincodeSuggestion = localStorage.getItem('selectedPincodeSuggestion');
                    var crossClicked = localStorage.getItem('crossClicked');
                    var viaCheckBtn = localStorage.getItem("viaCheck");
                    var onEdit = $('.onEdit').text();
                    if ((selectedCtyNameSuggestion === "true" && modalCloseViaContinue !== "true" && (crossClicked === "true")) ||
                            (selectedPincodeSuggestion === "true" && modalCloseViaContinue !== "true" && (crossClicked === "true")))
                    {
                        clearCitySearch();
                        clearlocalSuggestion();
                    } else if ((selectedCtyNameSuggestion === "true" || selectedPincodeSuggestion === "true") && (onEdit !== 'Enter Delivery Pincode or Area') && (crossClicked !== "true") && (modalCloseViaContinue !== "true") && (viaCheckBtn === "viaCheck")) {
                        location.reload();
                    }
                    $('#openCitySearchModal input[name=outside-india]').prop('checked', true);
                    outSideIndiaClick();
                }
            });
            var withIndia = document.getElementById('withIndia');
            var outSideIndia = document.getElementById('outSideIndia');
            outSideIndia.addEventListener('click', function () {
                outSideIndiaClick();
            });
            function outSideIndiaClick() {
            $("#replaceGlobeImage").attr("src", "https://assets.winni.in/groot/2023/10/25/mobile/icon-ionic-ios-globe.png")
            $("#replaceBuildingImage").attr("src", "https://assets.winni.in/groot/2023/10/25/mobile/building.png")
            $("#replaceGlobeImage").removeClass("countryFlagDesign");
               $('.onEditCountry').removeClass('fontWeightText');
               $('.onEditCountry').text('Select Country');
                $('.onEditCountryCity').text('Select Delivery City');
                let selectedCountry = localStorage.getItem("selectedCountryStore");
                let selectedCountryCitySugg = localStorage.getItem("selectedCountryCitySuggestion");
                let showEnterCityCheck = localStorage.getItem("showEnterCityCheck");

                $('.shoppingIndia').addClass('hide');
                $('.shoppingCountry').removeClass('hide');
                $('.shoppingCountry').css("display", "block");
                if (selectedCountry !== null && $('.onEditCountry').text() !== 'Select Country') {
                    if (selectedCountryCitySugg !== null && $('.onEditCountryCity').text() !== 'Select Delivery City') {
                        countryCitySuggestionSelected(selectedCountryCitySugg);
                        $('imgEditCountryCity').removeClass('hide');
                        $('.imgNormalCountryCity').addClass('hide');
                    } else {
                        clearCountryCitySearch();
                        $('.imgEditCountryCity').addClass('hide');
                        $('.imgNormalCountryCity').removeClass('hide');
                    }
                    $('.imgNormalCountry').addClass('hide');
                    $('.imgEditCountry').removeClass('hide');
                    $('.outSideCountryCity').css({"opacity": "1", "pointer-events": "auto"});
                    $('.shoppingCountry').css({"background-color": "#318800", "pointer-events": "auto"});
                } else {
                    $('#countryCitySearch').removeAttr('disabled');
                    $('#countryCitySearch').removeAttr('readonly');
                    $('.imgEditCountryCity').addClass('hide');
                    $('.imgNormalCountryCity').removeClass('hide');
                    $('.imgNormalCountry').removeClass('hide');
                    $('.imgEditCountry').addClass('hide');
                    $('.outSideCountryCity').css({"opacity": "0.5", "pointer-events": "none"});
                    $('.shoppingCountry').css({"background-color": "#9E9999", "pointer-events": "none"});
                }
                if (withIndia.checked) {
                    withIndia.checked = false;
                    $('.withInIndia').addClass("hide");
                    $('.outSideCountry').removeClass('hide');
                    if (showEnterCityCheck === "false") {
                        $('.outSideCountryCity').addClass('hide');
                    } else {
                        $('.outSideCountryCity').removeClass('hide');
                    }

                }
            }
            withIndia.addEventListener('click', function () {
                withinIndiaClick();
            });
            function withinIndiaClick() {
                $('.shoppingIndia').removeClass('hide');
                $('.shoppingCountry').addClass('hide');
                if (outSideIndia.checked) {
                    outSideIndia.checked = false;
                    $('.withInIndia').removeClass("hide");
                    $('.outSideCountry').addClass('hide');
                    $('.outSideCountryCity').addClass('hide');
                    $('.outSideCountryCity').css("pointer-events", "none");
                }
            }
            $('.outSideCountry').addClass('hide');
            $('.outSideCountryCity').addClass('hide');
            var inputPincode = document.querySelector('#indiaSearchPin');
            var inputFieldName = document.querySelector('#indiaCityByName');
            var inputFieldInternational = document.querySelector('#countryCitySearch');
            $('.countryCityContainer').on("click", function () {
                if ($('.onEditCountryCity').text().trim() === 'Select Delivery City') {
                    var countryCityId = localStorage.getItem("countryCitySearchId");
                    $('.selectDeliverTxt').html('Select City');
                    internationalCitySearch(countryCityId);
                }
            });
            $('.enterDeliveryLocation').click(function(){
               $('.selectDeliverTxt').html('Delivery In');
            });
            $("#searchTheCountryList").click(function(){
            $("#selectedCountrySearch").removeClass("countryShowHide");
            $(".allCountrySelected").removeClass("countryShowHide");
            });

            var checkCountryText = $('.onEditCountry').text().trim();
            if (selectedCountryCitySuggestion !== '' && selectedCountryCitySuggestion !== undefined && selectedCountryCitySuggestion !== null && checkCountryText !== 'Select Country') {
                countryCitySuggestionSelected(selectedCountryCitySuggestion);
            }

            function countryCitySuggestionSelected(suggestionClicked) {
              let countryCityIdAb = localStorage.getItem("countryCitySearchId");
            if(countryCityIdAb!==null){
             $("#replaceBuildingImage").attr("src", "https://assets.winni.in/groot/2023/11/02/red-building.png");
             $('.onEditCountryCity').addClass('fontWeightText');
            }

                $('.shoppingCountry').removeClass('hide');
                $('.shoppingCountry').css("display", "block");
                $('.shoppingCountry').addClass('modal-close');
                $('.shoppingCountry').css("background-color", "#318800");
                $('#countryCitySearch').attr('type', 'text');
                $('#countryCitySearch').prop('readonly', true);
                $('#countryCitySearch').prop('disabled', true);
                $('#countryCitySearch').val(suggestionClicked);
                $('.clearCountryCitySearch').removeClass('hide');
                $('.selectedCountryCity').removeClass('hide');
                $('.selectedCountryCity').addClass('modal-close');
                $('.selectedCountryCity').css("background-color", "#318800");
                $('.onEditCountryCity').text(suggestionClicked);
                $('.imgEditCountryCity').removeClass('hide');
                $('.imgNormalCountryCity').addClass('hide');
                $('.inputBorderInter').css({"pointer-events": "none", "caret-color": "transparent", "background-color": "#FFFFFF", "border": "1px solid #D5D5D5", "box-shadow": "0 0 5px #fafafa"});
            }
            $('.clearCountryCitySearch').click(function () {
                clearCountryCitySearch();
            });
            function clearCountryCitySearch() {
             $("#replaceBuildingImage").attr("src", "https://assets.winni.in/groot/2023/10/25/mobile/building.png");
                localStorage.removeItem("selectedCountryCitySuggestion");
                var countryCityId = localStorage.getItem("countryCitySearchId");
                $("#replaceBuildingImage").addClass('buildingDisplayBlock');
                $("#buildingHideShow").addClass('buildingHideShow');
                  internationalCitySearch(countryCityId);
                $('.shoppingCountry').css({"background-color": "#9E9999", "pointer-events": "none"});
                $('#countryCitySearch').removeAttr('disabled');
                $('#countryCitySearch').removeAttr('readonly');
                $('#countryCitySearch').val('');
                $('.clearCountryCitySearch').addClass('hide');
                $('.selectedCountryCity').addClass('hide');
                $('.selectedCountryCity').css({"background-color": "rgba(243,127,10,1", "pointer-events": "auto"});
                $('.onEditCountryCity').text("Select Delivery City");
                $('.imgEditCountryCity').addClass('hide');
                $('.imgNormalCountryCity').removeClass('hide');
                $('.inputBorderInter').css({"pointer-events": "auto", "caret-color": "auto", "background-color": "#FFFFFF", "border": "1px solid #ff9212", "box-shadow": "0 0 5px #DA0E68"});
                inputFieldInternational.autocomplete = "off";
            }
            if (selectedSuggestion !== '' && selectedSuggestion !== undefined && selectedSuggestion !== null) {
                var selectedPincode = localStorage.getItem("selectedPincodeSuggestion");
                var selectedCityPostal = localStorage.getItem("selectedCityPostal");

                if (selectedPincode === "true") {
                    $('.editLoc').text("Deliver In " + setReverseCityPincode);
                }
                designChange();
                cityIndiaSelected();
            }
            $('.clearCitySearch').click(function () {
                clearCitySearch();
            });
            function  clearCitySearch() {
                localStorage.setItem("crossClicked", true);
                $('.unselected').addClass('marginTopForPinCode');
                $("#wrPinMsg").addClass("hide");
                $("#wrPinMsg").text('');
                $('.unselected').removeClass('hide');
                $('.byName').addClass('hide');
                $('.byPincode').removeClass('hide');
                $('.selectedbt').addClass('hide');
                $('.selectedbt').css({"background-color": "#9E9999", "pointer-events": "none"});
                $('#ckPin').css("pointer-events", "auto");
                $('.shoppingIndia').css({"background-color": "#9E9999", "pointer-events": "none"});
                $('.clearCitySearch').addClass('hide');
                $('#indiaSearchPin').removeAttr('disabled');
                $('#indiaSearchPin').removeAttr('readonly');
                $('#indiaCityByName').removeAttr('disabled');
                $('#indiaCityByName').removeAttr('readonly');
                $('.inputBorder').css({"pointer-events": "auto", "caret-color": "auto", "background-color": "#FAFAFA", "border": "1px solid #707070"});
                $('#indiaSearchPin').val('');
                $('#indiaCityByName').val('');
                $('.clearCitySearch').addClass('hide');
                $('#indiaSearchPin').attr('type', 'number');
                $('.onEdit').text("Enter Delivery Pincode or Area");
                $('.onEditCity').text("Select Delivery City");
                $('.imgEdit').addClass('hide');
                $('.imgNormal').removeClass('hide');
                inputPincode.autocomplete = "off";
            }
            function  clearlocalSuggestion() {
                $('.editLoc').text("Delivery In");
                localStorage.removeItem("selectedSuggestion");
                presentCity = false;
                $('#current_city').text('City');
                localStorage.removeItem("addressSelected");
                localStorage.removeItem('selectedCtyNameSuggestion');
                localStorage.removeItem("crossClicked");
                localStorage.removeItem("addressSelected");
                removeUserArea();
            }
            inputPincode.addEventListener('input', () => {
                if (inputPincode.value !== '') {
                    $('.clearCitySearch').removeClass('hide');
                    $('.tt-menu').removeClass('hide');
                } else {
                    $('.clearCitySearch').addClass('hide');
                    $('.tt-menu').addClass('hide');
                }
            });
            inputPincode.addEventListener('focus', () => {
                $('.tt-menu').addClass('hide');
            });
            inputFieldName.addEventListener('input', () => {
                if (inputFieldName.value !== '') {
                    $('.clearCitySearch').removeClass('hide');
                    $('.tt-menu').removeClass('hide');
                } else {
                    $('.clearCitySearch').addClass('hide');
                    $('.tt-menu').addClass('hide');
                }
            });
            inputFieldName.addEventListener('focus', () => {
                $('.tt-menu').addClass('hide');
            });
            $('#indiaSearchPin, #countryCitySearch').on("keypress", function (e) {
                if (e.keyCode == 13) {
                    e.preventDefault();
                }
            });
            inputFieldInternational.addEventListener('input', () => {
                if (inputFieldInternational.value !== '') {
                    $('.clearCountryCitySearch').removeClass('hide');
                    $('.tt-menu').removeClass('hide');
                } else {
                    $('.clearCountryCitySearch').addClass('hide');
                    $('.tt-menu').addClass('hide');
                }
            });
            inputFieldInternational.addEventListener('focus', () => {
                $('.tt-menu').addClass('hide');
            });
            indianCitySearch();
            function indianCitySearch() {
                var states = new Bloodhound({
                    datumTokenizer: Bloodhound.tokenizers.whitespace,
                    queryTokenizer: Bloodhound.tokenizers.whitespace,
                    remote: {
                        url: searchIndianCity + '%QUERY',
                        wildcard: '%QUERY'
                    }
                });

                $('#indiaCityByName').typeahead(
                        {
                            hint: true,
                            highlight: true,
                            minLength: 2
                        },
                        {
                            name: 'states',
                            source: states,
                            autocomplete: "off",
                            limit: 8,
                            display: function (item) {
                                return item.areaName;
                            },
                            'updater': function (item) {
                                return item;
                            },
                            templates: {
                                suggestion: Handlebars.compile('<div areaName={{areaName}} class="citySearchSuggestionList">{{areaName}}</div>'),
                                empty: [
                                    '<div class="empty-message adbNoResultDesk">',
                                    'Sorry, we do not have this location covered',
                                    '</div>'
                                ].join('\n')
                            }
                        }
                ).on('typeahead:selected', function (e, suggestion) {
                    instanceDeliveryLoc.close();
                    localStorage.setItem("viaCheck", 'viaCheck');
                    localStorage.setItem("crossClicked", false);
                    localStorage.setItem("selectedCtyNameSuggestion", true);
                    localStorage.setItem("selectedPincodeSuggestion", false);

                    localStorage.setItem("selectedSuggestion", suggestion.areaName);
                    localStorage.setItem("selectedCityPostal", suggestion.adobeSearchSuggestedPostal);
                    designChange();
                    cityIndiaSelected();
                });
            }
            function internationalCitySearch() {
                var countryCityId = localStorage.getItem("countryCitySearchId");
                $('#countryCitySearch').typeahead('destroy');
                $('#countryCitySearch').typeahead('val', '');
                let states = new Bloodhound({
                    datumTokenizer: Bloodhound.tokenizers.whitespace,
                    queryTokenizer: Bloodhound.tokenizers.whitespace,
                    remote: {
                        url: searchInternationalCity + '/' + countryCityId + '/%QUERY',
                        wildcard: '%QUERY'
                    }
                });
                $('#countryCitySearch').typeahead(
                        {
                            hint: false,
                            highlight: true,
                            minLength: 3
                        },
                        {
                            name: 'states',
                            source: states,
                            autocomplete: "off",
                            limit: 10,
                            display: function (item) {
                                if (item.id === '-1' || item.id === '-2') {
                                    return item.searchString;
                                } else {
                                    return item.nameWithStateCode;
                                }
                            },
                            'updater': function (item) {
                                return item;
                            },
                            templates: {
                                suggestion: function (item) {
                                    if (item.id === '-1') {
                                        return '<div data-target="deliveryCountry" class=" checkTcp outSideCountry  modal-trigger" style="color:blue">' + item.message + '</div>';
                                    } else if (item.id === '-2') {
                                        return '<div>' + item.message + '</div>';
                                    } else {
                                        return '<div class="handlerCountrySearch">' + item.nameWithStateCode + '</div>';
                                    }
                                }
                            }
                        }
                ).on('typeahead:selected', function (e, suggestion) {
                    localStorage.setItem("selectedCountryCitySuggestion", suggestion.nameWithStateCode);
                    countryCitySuggestionSelected(suggestion.nameWithStateCode);
                    $('.handlerCountrySearch').addClass('modal-close');
                    $('.checkTcp').addClass('modal-close');
                    localStorage.removeItem("countryCitySearchId");
                });
            }
        }
    }
    $('.clearCountryCitySearch').click(function(){
        $("#replaceBuildingImage").attr("src", "https://assets.winni.in/groot/2023/10/25/mobile/building.png");
    });
});