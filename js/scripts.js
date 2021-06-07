


// script para passar informações para o modal de att anime
$('#attanime').on('show.bs.modal', function (event) {

    var button = $(event.relatedTarget) // Button that triggered the modal
    var id = button.data('id') 
    var nome = button.data('nome') 
    var temp = button.data('temp') 
    var epi = button.data('epi') 
    var nlk = button.data('nlk') 
    var lk = button.data('lk') 
    var imag = button.data('imag') 
    var stats = button.data('stats')

    var modal = $(this)

    modal.find('#id-anime').val(id)
    modal.find('#nomeAnime').val(nome)
    modal.find('#tempAnime').val(temp)
    modal.find('#epAnime').val(epi)
    modal.find('#nlinkAnime').val(nlk)
    modal.find('#linkAnime').val(lk)
    modal.find('#linkAImg').val(imag)
    modal.find('#statsAnime').val(stats)

})

//script para deletar o anime
$('#delanime').on('show.bs.modal', function (event) {

    var button = $(event.relatedTarget) // Button that triggered the modal    
    var id = button.data('id') 

    var modal = $(this)

    modal.find('#idAnime').val(id)

})

//script para passar informações para o modal de att Manga

$('#attmanga').on('show.bs.modal', function(event){

    var button = $(event.relatedTarget)
    var id = button.data('idm')
    var nome = button.data('nomem')
    var cap = button.data('capm')
    var nlk = button.data('nlkm')
    var lk = button.data('lkm')
    var stats = button.data('statsm')
    var imag = button.data('imagm') 


    var modal = $(this)

    modal.find('#idmanga').val(id)
    modal.find('#nomemanga').val(nome)
    modal.find('#capmanga').val(cap)
    modal.find('#nlinkmanga').val(nlk)
    modal.find('#linkmanga').val(lk)
    modal.find('#statsmanga').val(stats)
    modal.find('#linkMImg').val(imag)

    
})

//script para passar informações para o modal de delete Manga

$('#delmanga').on('show.bs.modal', function(event){

    var button = $(event.relatedTarget)

    var id = button.data('idm')

    var modal = $(this)

    modal.find('#idmanga').val(id)

})


//script para passar informações para o modal de att serie
$('#attserie').on('show.bs.modal', function(event){

    var button = $(event.relatedTarget)

    var id = button.data('id')
    var nome = button.data('nome')
    var temp = button.data('temp')
    var ep = button.data('epi')
    var nlk = button.data('nlk')
    var lk = button.data('lk')
    var stats = button.data('stats')
    var imag = button.data('imags') 

    var modal = $(this)

    
    modal.find('#nomeserie').val(nome)
    modal.find('#tempserie').val(temp)
    modal.find('#epserie').val(ep)
    modal.find('#nlinkserie').val(nlk)
    modal.find('#linkserie').val(lk)
    modal.find('#statsserie').val(stats)
    modal.find('#idserie').val(id)
    modal.find('#linkSImg').val(imag)


})

//script para passar informações para o modal de delete serie

$('#delserie').on('show.bs.modal', function(event){

    var button = $(event.relatedTarget)

    var id = button.data('id')

    var modal = $(this)

    modal.find('#idserie').val(id)

})

