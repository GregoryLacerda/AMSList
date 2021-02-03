



// script para passar informações para o modal de att anime
$('#attanime').on('show.bs.modal', function (event) {

    var button = $(event.relatedTarget) // Button that triggered the modal
    var id = button.data('idA') 
    var nome = button.data('nome') 
    var temp = button.data('temp') 
    var epi = button.data('epi') 
    var nlk = button.data('nlk') 
    var lk = button.data('lk') 
    //var imag = button.data('imag') 
    var stats = button.data('stats')

    var modal = $(this)

    modal.find('#idAnime').val(id)
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
