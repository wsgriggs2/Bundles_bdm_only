function find_validprizes(subject)


inventory=[1	1
2	1
3	1
4	1
5	1
6	0
7	1
8	1
9	1
10	0
11	0
12	0
13	0
14	0
15	0
16	0
17	0
18	0
19	0
20	0
21	0
22	0
23	0
24	0
25	0
26	0
27	0
28	0
29	0
30	0
31	0
32	0
33	12
34	12
35	0
36	0
37	0
38	0
39	0
40	0
41	0
42	0
43	0
44	0
45	0
46	0
47	0
48	0
49	0
50	0
51	0
52	0
53	0
54	0
55	0
56	0
57	0
58	0
59	0
60	0
61	0
62	0
63	0
64	0
65	0
66	0
67	0
68	0
69	0
70	0
101	1
102	0
103	0
104	0
105	0
106	0
107	0
108	0
109	0
110	0
111	0
112	0
113	0
114	0
115	0
116	0
117	1
118	0
119	0
120	2
121	1
122	0
123	0
124	2
125	0
126	0
127	1
128	0
129	0
130	0
131	0
132	0
133	0
134	0
135	0
136	0
137	0
138	0
139	0
140	0];

%subject='999-1';

file_items = ['data/item_list_sub_',subject];
load(file_items) % item_ids is loaded
item=bundle_item_seq;

valid_prizes=unique(inventory(inventory(:,2)>0,1));
item_copy=ismember(item,valid_prizes);
item(item_copy(:,1)==1 & item_copy(:,2)==1,:)
end