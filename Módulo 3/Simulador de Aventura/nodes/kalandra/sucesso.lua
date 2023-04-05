-- Constants
local ID = "kalandra.sucesso"

-- Dependencies
local Node = require("node")
local Choice = require("choice")

-- Create node
local node = Node:new(ID) ---@type Node
node.title = "Sucesso!"
node.gameWon = true
node.description = [[%{green}
Você abre a porta e encontra um pequeno altar no meio da sala. Ao se aproximar, você vê que há um pergaminho mágico nele, contendo instruções para lançar um feitiço que poderia afugentar o Kraken.

Você leva o pergaminho até a praia e o grande Kraken surge das profundezas, com mais de 30 metros de altura. Assustador!

Com a ajuda do pergaminho, a magia é realizada com sucesso e a criatura aterrorizante retorna para o seu reino, trazendo paz e tranquilidade para a região novamente. Em agradecimento, a líder local oferece a você uma recompensa generosa.

Sua aventura em Kalandra foi cheia de desafios, mas você sobreviveu e conseguiu ajudar a comunidade local. Com um senso de realização e satisfação, você segue em frente para sua próxima aventura, sabendo que suas habilidades e coragem serão necessárias novamente no futuro.]]
node.header = [[
%{      }      %{blue}        %{   }      %{      }  %{    }          %{     }  %{magenta} .''.   %{     }       
%{      }      %{blue} .''.   %{red}   .  %{      }  %{cyan}    *''*  %{     }  %{magenta}:_\/_:  %{green}   .   
%{      }      %{blue}:_\/_:  %{red} _\(/_%{      }  %{cyan}.:.*_\/_* %{     }  %{magenta}: /\ :  %{green}.'.:.'.
%{yellow}  .''.%{blue}: /\ :  %{red} ./)\ %{      }  %{cyan}':'* /\ * %{white}: %{magenta} '..'.  %{green}-=:o:=-
%{yellow} :_\/_:'%{blue}.:::. %{red}   '%{yellow} *''* %{cyan}   * %{white}'.\'/.'%{red    } _\(/_%{green}'.':'.'
%{yellow} : /\ : %{blue}::::: %{   }   %{yellow} *_\/_*%{    }     %{white}-= o =-%{red    }  /)\ %{green}   '  *
%{yellow}  '..'  %{blue}':::' %{   }   %{yellow} * /\ *%{    }     %{white}.'/.\'.%{red    }   '  %{     }       
%{      }      *   %{    }    %{   }   %{yellow}  *..* %{    }     %{white}   :   %{       }      %{     }       
%{white }jgs     * %{    }    %{   }   %{      }       %{    }     %{     }       %{       }      %{     }       
%{      }        * %{    }    %{   }   %{      }       %{    }     %{     }       %{       }      %{     }       
]]

return node
