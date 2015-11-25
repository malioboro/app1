class BattleArena
  def initialize
    onStart()
  end
  def onStart
    choice = "new"
    case choice
    when /start$/
      puts "starting game"
    when /new$/
      newPlayer()
    else
      puts "unknown command"
    end
  end
  def newPlayer
    totalPlayers = 0
    case totalPlayers
    when 0
      puts "No player in game"
      puts "Create at least two players to begin the game"
    when 1
      puts "Only one player in game"
      puts "Create at least two players to begin the game"
    when 2
      puts "There are two players in game"
      puts "You can create one more players or you can just begin the game"
    when 3
      puts "There are three players in game"
      puts "Just begin the game"
    else
      puts "unknown command"
    end
  end
  def ui
    uiHeader()
    uiDescription()
    uiMainArea()
  end
  def uiHeader
    puts"#======================================#"
    puts"#      Welcome to The Battle Arena     #"
    puts"#--------------------------------------#"
  end
  def uiDescription
    puts"# Description                          #"
    puts"# 1 type \"new\" to create a character #"
    puts"# 2 type \"start\" to begin the fight  #"
  end
  def uiMainArea
    puts"#----------------------#"
    uiContent()
    puts"# Max Player 2 or 3    #"
    puts"#----------------------#"
  end
  def uiContent
    puts"# Current Player       #"
  end
end
game=BattleArena.new
