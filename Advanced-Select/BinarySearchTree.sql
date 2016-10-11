/*
You are given a table, BST, containing two columns: N and P, where N represents the value of a node in BST, and P is the parent of N.

Write a query to find the node type of BST ordered by the value of the node. Output one of the following for each node:

Root: If node is root node.
Leaf: If node is leaf node.
Inner: If node is neither root nor leaf node.
Enter your query here.
*/

SELECT N, IF(P IS NULL,'Root',IF(
    (SELECT COUNT(*) FROM BST WHERE P=B.N)>0,'Inner','Leaf')) FROM BST AS B ORDER BY N;

