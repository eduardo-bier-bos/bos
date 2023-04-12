// BOS - BierOnStack - File Reserved
button-tag.button-tag
    button.ui.icon.mini.button(if='{ opts.buttonType == helpersWebApp.both().actions.add}' class='{ typeof(opts.buttonFluid)!="undefined" ? "fluid" : "" } { typeof(opts.buttonSize)!="undefined" ? opts.buttonSize : "mini" } { "button-active": typeof(opts.buttonActive)!=="undefined" && opts.buttonActive==true } {"disabled": (typeof(opts.buttonEnabled) !== "undefined" && opts.buttonEnabled==false) }' click='{ opts.buttonClick }' data-content='Inserir novo registro' data-position='bottom center' data-variation='mini')
        i.add.blue.icon.cursor
    button.ui.icon.mini.button(if='{ opts.buttonType == helpersWebApp.both().actions.filter}' class='{ typeof(opts.buttonFluid)!="undefined" ? "fluid" : "" } { typeof(opts.buttonSize)!="undefined" ? opts.buttonSize : "mini" } { "button-active": typeof(opts.buttonActive)!=="undefined" && opts.buttonActive==true } {"disabled": (typeof(opts.buttonEnabled) !== "undefined" && opts.buttonEnabled==false) }' click='{ opts.buttonClick }' data-content='Pesquisar uma informação' data-position='bottom center' data-variation='mini')
        i.filter.green.icon.cursor
    button.ui.icon.mini.button(if='{ opts.buttonType == helpersWebApp.both().actions.confirm}' class='{ typeof(opts.buttonFluid)!="undefined" ? "fluid" : "" } { typeof(opts.buttonSize)!="undefined" ? opts.buttonSize : "mini" } { "button-active": typeof(opts.buttonActive)!=="undefined" && opts.buttonActive==true } {"disabled": (typeof(opts.buttonEnabled) !== "undefined" && opts.buttonEnabled==false) }' click='{ opts.buttonClick }' data-content='Confirmar e enviar os dados' data-position='bottom center' data-variation='mini')
        i.check.green.icon.cursor.pointer
    button.ui.icon.mini.button(if='{ opts.buttonType == helpersWebApp.both().actions.edit}' class='{ typeof(opts.buttonFluid)!="undefined" ? "fluid" : "" } { typeof(opts.buttonSize)!="undefined" ? opts.buttonSize : "mini" } { "button-active": typeof(opts.buttonActive)!=="undefined" && opts.buttonActive==true } {"disabled": (typeof(opts.buttonEnabled) !== "undefined" && opts.buttonEnabled==false) }' click='{ opts.buttonClick }' data-content='Editar' data-position='bottom center' data-variation='mini')
        i.edit.blue.icon.cursor.pointer
    button.ui.icon.button(if='{ opts.buttonType == helpersWebApp.both().actions.remove}' class='{ typeof(opts.buttonFluid)!="undefined" ? "fluid" : "" } { typeof(opts.buttonSize)!="undefined" ? opts.buttonSize : "mini" } { "button-active": typeof(opts.buttonActive)!=="undefined" && opts.buttonActive==true } {"disabled": (typeof(opts.buttonEnabled) !== "undefined" && opts.buttonEnabled==false) }' click='{ opts.buttonClick }' data-content='Apagar' data-position='bottom center' data-variation='mini')
        i.trash.red.icon.cursor.pointer
    button.ui.icon.mini.button(if='{ opts.buttonType == helpersWebApp.both().actions.cancel}' class='{ typeof(opts.buttonFluid)!="undefined" ? "fluid" : "" } { typeof(opts.buttonSize)!="undefined" ? opts.buttonSize : "mini" } { "button-active": typeof(opts.buttonActive)!=="undefined" && opts.buttonActive==true } {"disabled": (typeof(opts.buttonEnabled) !== "undefined" && opts.buttonEnabled==false) }' click='{ opts.buttonClick }' data-content='Cancelar' data-position='bottom center' data-variation='mini')
        i.remove.red.icon.cursor.pointer
    button.ui.icon.mini.button(if='{ opts.buttonType == helpersWebApp.both().actions.close}' class='{ typeof(opts.buttonFluid)!="undefined" ? "fluid" : "" } { typeof(opts.buttonSize)!="undefined" ? opts.buttonSize : "mini" } { "button-active": typeof(opts.buttonActive)!=="undefined" && opts.buttonActive==true } {"disabled": (typeof(opts.buttonEnabled) !== "undefined" && opts.buttonEnabled==false) }' click='{ opts.buttonClick }' data-content='Fechar' data-position='bottom center' data-variation='mini')
        i.remove.red.icon.cursor.pointer
    button.ui.icon.mini.button(if='{ opts.buttonType == helpersWebApp.both().actions.clear}' class='{ typeof(opts.buttonFluid)!="undefined" ? "fluid" : "" } { typeof(opts.buttonSize)!="undefined" ? opts.buttonSize : "mini" } { "button-active": typeof(opts.buttonActive)!=="undefined" && opts.buttonActive==true } {"disabled": (typeof(opts.buttonEnabled) !== "undefined" && opts.buttonEnabled==false) }' click='{ opts.buttonClick }' data-content='Limpar' data-position='bottom center' data-variation='mini')
        i.ban.red.icon.cursor.pointer
    button.ui.icon.mini.button(if='{ opts.buttonType == helpersWebApp.both().actions.save}' class='{ typeof(opts.buttonFluid)!="undefined" ? "fluid" : "" } { typeof(opts.buttonSize)!="undefined" ? opts.buttonSize : "mini" } { "button-active": typeof(opts.buttonActive)!=="undefined" && opts.buttonActive==true } {"disabled": (typeof(opts.buttonEnabled) !== "undefined" && opts.buttonEnabled==false) }' click='{ opts.buttonClick }' data-content='Salvar' data-position='bottom center' data-variation='mini')
        i.save.green.icon.cursor.pointer
    button.ui.icon.mini.button(if='{ opts.buttonType == helpersWebApp.both().actions.buy}' class='{ typeof(opts.buttonFluid)!="undefined" ? "fluid" : "" } { typeof(opts.buttonSize)!="undefined" ? opts.buttonSize : "mini" } { "button-active": typeof(opts.buttonActive)!=="undefined" && opts.buttonActive==true } {"disabled": (typeof(opts.buttonEnabled) !== "undefined" && opts.buttonEnabled==false) }' click='{ opts.buttonClick }' data-content='Comprar' data-position='bottom center' data-variation='mini')
        i.cart.arrow.orange.icon.cursor.pointer
    button.ui.icon.mini.button(if='{ opts.buttonType == helpersWebApp.both().actions.pay}' class='{ typeof(opts.buttonFluid)!="undefined" ? "fluid" : "" } { typeof(opts.buttonSize)!="undefined" ? opts.buttonSize : "mini" } { "button-active": typeof(opts.buttonActive)!=="undefined" && opts.buttonActive==true } {"disabled": (typeof(opts.buttonEnabled) !== "undefined" && opts.buttonEnabled==false) }' click='{ opts.buttonClick }' data-content='Pagar' data-position='bottom center' data-variation='mini')
        i.money.arrow.green.icon.cursor.pointer
    button.ui.icon.mini.button(if='{ opts.buttonType == helpersWebApp.both().actions.subscribe}' class='{ typeof(opts.buttonFluid)!="undefined" ? "fluid" : "" } { typeof(opts.buttonSize)!="undefined" ? opts.buttonSize : "mini" } { "button-active": typeof(opts.buttonActive)!=="undefined" && opts.buttonActive==true } {"disabled": (typeof(opts.buttonEnabled) !== "undefined" && opts.buttonEnabled==false) }' click='{ opts.buttonClick }' data-content='Inscrever' data-position='bottom center' data-variation='mini')
        i.user.outline.green.icon.cursor.pointer
    button.ui.icon.mini.button(if='{ opts.buttonType == helpersWebApp.both().actions.read}' class='{ typeof(opts.buttonFluid)!="undefined" ? "fluid" : "" } { typeof(opts.buttonSize)!="undefined" ? opts.buttonSize : "mini" } {"button-active": typeof(opts.buttonActive)!=="undefined" && opts.buttonActive==true } {"disabled": (typeof(opts.buttonEnabled) !== "undefined" && opts.buttonEnabled==false) }' click='{ opts.buttonClick }' data-content='Acessar' data-position='bottom center' data-variation='mini')
        i.eye.purple.icon.cursor.pointer
    button.ui.icon.mini.button(if='{ opts.buttonType == helpersWebApp.both().actions.writeoff}' class='{ typeof(opts.buttonFluid)!="undefined" ? "fluid" : "" } { typeof(opts.buttonSize)!="undefined" ? opts.buttonSize : "mini" } { "button-active": typeof(opts.buttonActive)!=="undefined" && opts.buttonActive==true } {"disabled": (typeof(opts.buttonEnabled) !== "undefined" && opts.buttonEnabled==false) }' click='{ opts.buttonClick }' data-content='Dar Baixa' data-position='bottom center' data-variation='mini')
        i.calendar.check.orange.outline.icon.cursor.pointer
    button.ui.icon.mini.button(if='{ opts.buttonType == helpersWebApp.both().actions.export}' class='{ typeof(opts.buttonFluid)!="undefined" ? "fluid" : "" } { typeof(opts.buttonSize)!="undefined" ? opts.buttonSize : "mini" } { "button-active": typeof(opts.buttonActive)!=="undefined" && opts.buttonActive==true } {"disabled": (typeof(opts.buttonEnabled) !== "undefined" && opts.buttonEnabled==false) }' click='{ opts.buttonClick }' data-content='Exportar' data-position='bottom center' data-variation='mini')
        i.file.excel.outline.green.icon.cursor.pointer
    button.ui.icon.mini.button(if='{ opts.buttonType == helpersWebApp.both().actions.get}' class='{ typeof(opts.buttonFluid)!="undefined" ? "fluid" : "" } { typeof(opts.buttonSize)!="undefined" ? opts.buttonSize : "mini" } { "button-active": typeof(opts.buttonActive)!=="undefined" && opts.buttonActive==true } {"disabled": (typeof(opts.buttonEnabled) !== "undefined" && opts.buttonEnabled==false) }' click='{ opts.buttonClick }' data-content='Pegar' data-position='bottom center' data-variation='mini')
        i.arrow.circle.down.blue.icon.cursor.pointer
    button.ui.icon.mini.button(if='{ opts.buttonType == helpersWebApp.both().actions.download}' class='{ typeof(opts.buttonFluid)!="undefined" ? "fluid" : "" } { typeof(opts.buttonSize)!="undefined" ? opts.buttonSize : "mini" } { "button-active": typeof(opts.buttonActive)!=="undefined" && opts.buttonActive==true } {"disabled": (typeof(opts.buttonEnabled) !== "undefined" && opts.buttonEnabled==false) }' click='{ opts.buttonClick }' data-content='Download' data-position='bottom center' data-variation='mini')
        i.arrow.circle.download.blue.icon.cursor.pointer
    button.ui.icon.button(if='{ opts.buttonType == helpersWebApp.both().actions.arrowRight}' class='{ typeof(opts.buttonFluid)!="undefined" ? "fluid" : "" } { typeof(opts.buttonColor)!="undefined" ? opts.buttonColor : "" } { typeof(opts.buttonSize)!="undefined" ? opts.buttonSize : "mini" } { "button-active": typeof(opts.buttonActive)!=="undefined" && opts.buttonActive==true } {"disabled": (typeof(opts.buttonEnabled) !== "undefined" && opts.buttonEnabled==false) }' click='{ opts.buttonClick }' data-content='Adicionar' data-position='bottom center' data-variation='large')
        i.arrow.circle.right.icon.cursor.pointer(class='{ typeof(opts.iconColor)!="undefined" ? opts.iconColor : "orange" }')
        | { typeof(opts.buttonLabel)!="undefined" ? opts.buttonLabel : "" }
    button.ui.icon.button(if='{ opts.buttonType == helpersWebApp.both().actions.arrowUp}' class='{ typeof(opts.buttonFluid)!="undefined" ? "fluid" : "" } { typeof(opts.buttonColor)!="undefined" ? opts.buttonColor : "" } { typeof(opts.buttonSize)!="undefined" ? opts.buttonSize : "mini" } { "button-active": typeof(opts.buttonActive)!=="undefined" && opts.buttonActive==true } {"disabled": (typeof(opts.buttonEnabled) !== "undefined" && opts.buttonEnabled==false) }' click='{ opts.buttonClick }' data-content='Mover para cima' data-position='bottom center' data-variation='large')
        i.arrow.circle.up.icon.cursor.pointer(class='{ typeof(opts.iconColor)!="undefined" ? opts.iconColor : "orange" }')
        | { typeof(opts.buttonLabel)!="undefined" ? opts.buttonLabel : "" }
    button.ui.icon.button(if='{ opts.buttonType == helpersWebApp.both().actions.arrowDown}' class='{ typeof(opts.buttonFluid)!="undefined" ? "fluid" : "" } { typeof(opts.buttonColor)!="undefined" ? opts.buttonColor : "" } { typeof(opts.buttonSize)!="undefined" ? opts.buttonSize : "mini" } { "button-active": typeof(opts.buttonActive)!=="undefined" && opts.buttonActive==true } {"disabled": (typeof(opts.buttonEnabled) !== "undefined" && opts.buttonEnabled==false) }' click='{ opts.buttonClick }' data-content='Mover para baixo' data-position='bottom center' data-variation='large')
        i.arrow.circle.down.orange.icon.cursor.pointer
    script buttonTag.call(this, this.opts)
