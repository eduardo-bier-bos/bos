// BOS - BierOnStack - File Reserved
main-container.pusher.main-container-tag
    div.main-loading.ui.dimmer.inverted
        div.ui.text.medium.primary.loader Aguarde
    header(if='{opts.showHeaderProfile}')
    //- header-alert(if='{opts.showHeaderAlert}')
    div(id='modal-container')
    div(id='tag-container')
    script mainContainerTag.call(this, this.opts)