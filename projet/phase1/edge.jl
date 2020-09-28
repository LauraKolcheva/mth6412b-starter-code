import Base.show

"""Type abstrait dont d'autres types d'arretes non orientees dériveront."""
abstract type AbstractEdge{Node} end

"""Type représentant les arcs non-oriente d'un graphe.

Exemple:

        edge = Edge(Node 1, Node2)
        edge = Edge(Node2, Node1)

"""
mutable struct Edge{Node} <: AbstractEdge{Node}
  data::Node[]
  weight:: Int
end

# on présume que tous les noeuds dérivant d'AbstractNode
# posséderont des champs `data` et 'weight'

"""Renvoie les deux extremites de l'arc"""
data(edge::AbstractEdge) = edge.data

""" renvoie le poids de l'arc"""
weight(edge::AbstractEdge)=edge.weight

"""Affiche un noeud."""
function show(edge::AbstractEdge)
  println("Edge between", data(edge)[1],"and", data(edge)[2],"of weight", weight(edge))
end
