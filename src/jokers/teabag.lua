SMODS.Joker {
    key = "teabag",
    config = { extra = { rounds = 5, max_money = 40 } },
    unlocked = true,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,
    rarity = 2,
    atlas = "jokers",
    pos = {x = 3, y = 2},
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.rounds, card.ability.extra.max_money } }
    end
}