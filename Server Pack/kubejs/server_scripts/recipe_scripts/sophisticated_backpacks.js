ServerEvents.recipes(recipe => {
  
  function backpack_ingot_to_block(material, ingredient_backpack){
    var backpack = 'sophisticatedbackpacks:' + material + '_backpack'
    recipe.remove({ output: backpack}) // Remove the recipe
    recipe.shaped( // Create the recipe
      Item.of(backpack, 1),
      [
        'AAA',
        'ABA', // arg 2: the shape (array of strings)
        'AAA'
      ],
      {
        A: '#c:'+ material + '_blocks',
        B: ingredient_backpack
      }
    )
  }
  
  backpack_ingot_to_block('copper', 'sophisticatedbackpacks:backpack')
  backpack_ingot_to_block('iron', 'sophisticatedbackpacks:backpack')
  backpack_ingot_to_block('gold', 'sophisticatedbackpacks:backpack')
  backpack_ingot_to_block('diamond', 'sophisticatedbackpacks:backpack')

  // Change smithing recipe for Netherite backpack.
  var netherite_backpack = 'sophisticatedbackpacks:netherite_backpack'
  recipe.remove({ output: netherite_backpack}) // Remove the recipe
  recipe.smithing(
    netherite_backpack,                                               // arg 1: output
    'minecraft:netherite_upgrade_smithing_template',                  // arg 2: the smithing template
    'sophisticatedbackpacks:diamond_backpack',                        // arg 3: the item to be upgraded
    'minecraft:netherite_block'                                       // arg 4: the upgrade item
  )
})