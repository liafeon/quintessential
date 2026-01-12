SMODS.Joker {
    key = "threeflavours",
    config = { extra = { chips = 120, cards = 3 }},
    unlocked = true,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = false,
    perishable_compat = true,
    rarity = 2,
    atlas = "jokers",
    pos = {x = 1, y = 0},
    cost = 5,
    loc_vars = function( self, info_queue, card )
        return { vars = { card.ability.extra.chips, card.ability.extra.cards } }
    end,
    calculate = function( self, card, context )
        if context.joker_main then
            return {
                chips = card.ability.extra.chips,
                message = localize{type='variable', key='a_chips', vars={card.ability.extra.Xmult}},
            }
        elseif context.after then
            if #context.full_hand > card.ability.extra.cards then
                card.ability.extra.cards = card.ability.extra.cards - 1
                if card.ability.extra.cards == 0 then
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            play_sound('tarot1')
                            card.T.r = -0.2
                            card:juice_up(0.3, 0.4)
                            card.states.drag.is = true
                            card.children.center.pinch.x = true
                            G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.3, blockable = false,
                                func = function()
                                        G.jokers:remove_card(card)
                                        card:remove()
                                        card = nil
                                    return true; end}))
                            return true
                        end
                    }))
                    return {
                        message = localize('k_eaten_ex'),
                        card = card,
                    }
                end
                return {
                    message = localize('k_eaten_ex'),
                    card = card,
                }
            end
        end
    end
}