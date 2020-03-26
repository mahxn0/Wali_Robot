import torch
'''
input: 8,3,384,128
output_f: 8, 2048(256*8)
featues: *, 2048
'''

def extract_feature(model, loader, dim_1):
    features = torch.FloatTensor()

    for (inputs, labels) in loader:

        ff = torch.FloatTensor(inputs.size(0), dim_1).zero_()
        for i in range(2):
            if i == 1:
                inputs = inputs.index_select(3, torch.arange(inputs.size(3) - 1, -1, -1).long()) #127~0
            input_img = inputs.to('cuda')
            outputs = model(input_img)
            f = outputs[0].data.cpu()
            ff = ff + f #8,2048

        fnorm = torch.norm(ff, p=2, dim=1, keepdim=True)
        ff = ff.div(fnorm.expand_as(ff))
        features = torch.cat((features, ff), 0)
    return features
