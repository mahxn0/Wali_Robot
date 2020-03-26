from torch.optim import Adam, SGD
# from opt_CHANNEL_mask import opt


def get_optimizer(model, opt):
    if opt.freeze:
        for p in model.parameters():
            p.requires_grad = False
        for q0 in model.mask0.parameters():
            q0.requires_grad = True
        for q1 in model.mask1.parameters():
            q1.requires_grad = True
        for q2 in model.mask2.parameters():
            q2.requires_grad = True
        for q3 in model.mask3.parameters():
            q3.requires_grad = True
        optimizer = Adam(filter(lambda x: x.requires_grad==True, model.parameters()), lr = opt.lr, weight_decay = 5e-4,
                         amsgrad= True)
    else:
        optimizer = Adam(model.parameters(), lr = opt.lr, weight_decay=5e-4, amsgrad=True)

    return optimizer
