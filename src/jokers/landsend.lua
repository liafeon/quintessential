SMODS.Joker {
    key = "landsend",
    config = { extra = { Xmult = 1, Xmult_mod = 0.1, base = 1 }},
    unlocked = true,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = false,
    perishable_compat = true,
    rarity = 2,
    atlas = "jokers",
    pos = {x = 1, y = 3},
    cost = 5,
    loc_vars = function( self, info_queue, card )
        return { vars = { card.ability.extra.Xmult, card.ability.extra.Xmult_mod } }
    end,
    calculate = function( self, card, context )
        if context.joker_main then
            return {
                message = localize{type='variable', key='a_xmult', vars={card.ability.extra.Xmult}},
                Xmult_mod = card.ability.extra.Xmult
            }
        end
    end,
    update = function(self, card)
        if G.playing_cards ~= nil then
            local temp_table = {}
            local max_count = 0

            for _, v in pairs(G.playing_cards) do
                if temp_table[v.base.suit] and temp_table[v.base.suit][v:get_id()] then
                    temp_table[v.base.suit][v:get_id()] = temp_table[v.base.suit][v:get_id()] + 1
                elseif temp_table[v.base.suit] then
                    temp_table[v.base.suit][v:get_id()] = 1
                else
                    temp_table[v.base.suit] = {}
                    temp_table[v.base.suit][v:get_id()] = 1
                end
                if temp_table[v.base.suit][v:get_id()] > max_count then
                    max_count = temp_table[v.base.suit][v:get_id()]
                end
            end

            card.ability.extra.Xmult = card.ability.extra.base + card.ability.extra.Xmult_mod * max_count

        end
    end
}