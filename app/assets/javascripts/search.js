document.addEventListener("turbolinks:load",function(){
        $input = $("[data-behavior='autocomplete']")


        var options = {
            getValue: "name",
            url: function(phrase)
            {
                return "/search.json?q=" + phrase;
            },
            categories: [
                {
                    listLocation: "pets",
                    header: "<strong>Names</strong>",
                }

            ], theme: "dark",
            list: 	{
                onChooseEvent: function()
                {
                    var url = $input.getSelectedItemData().url
                    $input.val("")
                    Turbolinks.visit(url)
                    // console.log(url)
                }
            }
        }
        $input('#theme').easyAutocomplete(options)

    }
);