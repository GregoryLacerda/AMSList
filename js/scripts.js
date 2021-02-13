
// script para passar informações para o modal de att anime
$('#attanime').on('show.bs.modal', function (event) {

    var button = $(event.relatedTarget) // Button that triggered the modal
    var id = button.data('id') 
    var nome = button.data('nome') 
    var temp = button.data('temp') 
    var epi = button.data('epi') 
    var nlk = button.data('nlk') 
    var lk = button.data('lk') 
    //var imag = button.data('imag') 
    var stats = button.data('stats')

    var modal = $(this)

    modal.find('#id-anime').val(id)
    modal.find('#nomeAnime').val(nome)
    modal.find('#tempAnime').val(temp)
    modal.find('#epAnime').val(epi)
    modal.find('#nlinkAnime').val(nlk)
    modal.find('#linkAnime').val(lk)
    //modal.find('#imgAnime').val(imag)
    modal.find('#sttsAnime').val(status)

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

    var buttonm = $(event.relatedTarget)
    var idm = buttonm.data('idm')
    var nomem = buttonm.data('nomem')
    var capm = buttonm.data('capm')
    var nlkm = buttonm.data('nlkm')
    var lkm = buttonm.data('lkm')
    var statsm = buttonm.data('statsm')

    var modalm = $(this)

    modalm.find('#idmanga').val(idm)
    modalm.find('#nomemanga').val(nomem)
    modalm.find('#capmanga').val(capm)
    modalm.find('#nlinkmanga').val(nlkm)
    modalm.find('#linkmanga').val(lkm)
    modalm.find('statsmanga').val(statsm)
    
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

    var modal = $(this)

    modal.find('#idserie')
    modal.find('#nomeserie').val(nome)
    modal.find('#tempserie').val(temp)
    modal.find('#epserie').val(ep)
    modal.find('#nlinkserie').val(nlk)
    modal.find('#linkserie').val(lk)
    modal.find('#sttsserie').val(stats)

})

//script para passar informações para o modal de delete serie

$('#delserie').on('show.bs.modal', function(event){

    var button = $(event.relatedTarget)

    var id = button.data('id')

    var modal = $(this)

    modal.find('#idserie').val(id)

})